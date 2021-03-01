(fn usage []
  "Print usage string"
  (io.write (string.format "usage: %s [file ...]\n" (. arg 0))))

(fn main []
  "Main function"
  (if (not (> (# arg) 0))
    (usage)
    (each [_ filename (ipairs arg)]
      (let [(ok err)
        (pcall #(with-open [file (io.open filename :rb)]
          (io.write (file:read "*a"))
          (error :filename)))]
        err))))

(main)
