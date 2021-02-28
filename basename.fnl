(fn usage []
  (string.format "usage: %s path [suffix]" (. arg 0)))

(fn basename [str]
  (str:gsub "(.*/)(.*)" "%2"))

(fn main []
  (if (not (or (= (# arg) 1) (= (# arg) 2)))
    (usage)
    (= (# arg) 2)
    (let [p (basename (. arg 1))]
      (let [(s _) (p:gsub (string.format "%%.%s" (. arg 2)) "")]
        s))
    (let [(s _) (basename (. arg 1))]
      s)))

(print (main))
