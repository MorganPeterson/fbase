(fn usage [args]
  "Print usage string"
  (io.write (string.format "need a path and an optional suffix\n")))

(fn get-name [str]
  "Regex string that strips path down to last file name"
  (str:gsub "(.*/)(.*)" "%2"))

(fn basename [path ...]
  "main function"
  (if (not path)
    (usage)
    (> (# ...) 0)
    (let [p (get-name path)]
      (let [(s _) (p:gsub (string.format "%%.%s" (. ...)) "")]
        (io.write (.. s "\n"))))
    (let [(s _) (get-name (. path))]
      (io.write (.. s "\n")))))

