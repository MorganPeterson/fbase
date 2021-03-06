(fn usage []
  "Print usage"
  (io.write "need at least one file name passed\n"))

(fn crc-32 [file]
  " return crc32 checksum of file using no lookup table"
  (var crc 0xffffffff)
  (for [i 1 (# file)]
    (set crc (bxor crc (string.byte file i)))
    (for [_ 1 8]
      (set crc (bxor (rshift crc 1) (band 0xedb88320 (- (band crc 1)))))))
  (band (bnot crc) 0xffffffff))

(fn process-file [fd filename]
  "Wrapper for crc-32 that prints out results"
  (let [file (fd:read "*a")]
    (io.write (.. (crc-32 file) " " (# file) " " filename "\n"))))

(fn cksum [...]
  "main function"
  (if (not ...)
    (usage)
    (each [_ filename (ipairs ...)]
      (pcall #(with-open [file (io.open filename "rb")]
        (process-file file filename)
        (error (.. filename ": " "io error")))))))
