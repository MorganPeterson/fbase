(local arg-parse (require :args))

(fn usage []
  "Print usage"
  (io.write (string.format "usage: %s [-v|-s] file1 file2\n" (. arg 0))))

(fn eo-file [filename flag]
  (if (not flag)
    (io.write (string.format "cmp: EOF on %s\n" filename)))
  true)

(fn diff-file [fn1 fn2 bytes line flag]
  (if (not flag)
    (io.write (string.format "%s %s differ: byte %s, line %s\n" fn1 fn2 bytes line)))
  true)

(fn process-files [fd1 fd2 fn1 fn2 flags]
  (var done? false)
  (var differ? false)
  (var line 1)
  (var byte 1)
  (while (and (not done?) (not differ?))
    (let [b1 (fd1:read 1)
          b2 (fd2:read 1)]
      (if (= b1 b2)
        (if (= b1 nil)
          (set done? true)
          (= b1 "\n")
          (set line (+ line 1)))
        (or (= b1 nil) (= b2 nil))
        (set done? (eo-file fn1 (. flags "s")))
        (not (. flags "v"))
        (set differ? (diff-file fn1 fn2 byte line (. flags "s")))
        (io.write (string.format "%4u %3o %3o\n" byte (string.byte b1) (string.byte b2))))
      (set byte (+ byte 1))))
  (not differ?))

  
(fn read-files [f1 f2 flags]
  (with-open [fd1 (io.open f1 :rb)
              fd2 (io.open f2 :rb)]
    (process-files fd1 fd2 f1 f2 flags)))

(fn main []
  (let [args (arg-parse arg)]
  (if (or (not (= (# args.args) 2)) (and (. args.flags "v") (. args.flags "s")))
    (usage)
    (read-files (. args.args 1) (. args.args 2) args.flags))))

(main)
