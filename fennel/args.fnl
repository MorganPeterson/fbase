(fn arg-parse [args]
  (var f [])
  (var a [])
  (for [i 1 (length args)]
    (if (= (string.sub (. args i) 1 1) "-")
      (for [j 2 (length (. args i))]
        (tset f (string.sub (. args i) j j) true))
      (table.insert a (. args i))
      ))
  {:flags f :args a})
