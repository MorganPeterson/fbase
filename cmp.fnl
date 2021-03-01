(fn usage []
  "Print usage"
  (io.write (string.format "usage: %s file1 file2\n" (. arg 0))))

(fn process-files [fd1 fd2 fn1 fn2]
  (var done? false)
  (var differ? false)
  (var line 1)
  (var byte 1)
  (while (and (not done?) (not differ?))
    (let [b1 (fd1:read 1)
          b2 (fd2:read 1)]
      (if (and (= b1 nil) (= b2 nil))
        (set done? true)
        (~= b1 b2)
        (set differ? true))
      
      (when (and (not done?) (not differ?))
        (when (= b1 "\n")
          (set line (+ line 1)))
        (set byte (+ byte 1)))))
  (if differ?
    (io.write (string.format "%s %s differ: byte %s, line %s\n" fn1 fn2 byte line))))
  
(fn read-files [f1 f2]
  (let [(_ err)
    (pcall #(with-open [fd1 (io.open f1 :rb)
                        fd2 (io.open f2 :rb)]
      (process-files fd1 fd2 f1 f2)
      (error :io-error)))]
    err))

(fn main []
  (if (not (= (# arg) 2))
    (usage)
    (read-files (. arg 1) (. arg 2))))

(main)
