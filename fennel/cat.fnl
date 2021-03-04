(fn usage []
  "Print usage string"
  (io.write "requires one or more files\n"))

(fn cat [...]
  "Main function"
  (if (not ...)
    (usage)
    (each [_ filename (ipairs ...)]
      (let [(ok err)
        (pcall #(with-open [file (io.open filename :rb)]
          (io.write (file:read "*a"))
          (error :filename)))]
        err))))
