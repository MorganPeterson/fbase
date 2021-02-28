(fn usage []
  (io.write (string.format "usage: %s [file ...]\n" (. arg 0))))

(fn main []
  (if (not (> (# arg) 0))
    (usage)
    (each [_ filename (ipairs arg)]
      (let [(file err) (io.open filename "rb")]
        (if file
          (io.write (file:read "*a"))
          (error (.. filename ": " err)))))))

(main)
