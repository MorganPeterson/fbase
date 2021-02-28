(fn usage []
  (io.write (string.format "usage: %s [year]\n" (. arg 0))))

(fn print-cal [year]
  (let [months ["JANUARY" "FEBRUARY" "MARCH" "APRIL" "MAY" "JUNE" "JULY"
                "AUGUST" "SEPTEMBER" "OCTOBER" "NOVEMBER" "DECEMBER"]
        title "MO TU WE TH FR SA SU"
        sep 5
        monthWidth (string.len title)
        ]

    (var daysPerMonth [31 28 31 30 31 30 31 31 30 31 30 31])
    (var startDay (% (+ (- (+ (* (- year 1) 365) (math.floor (/ (- year 1) 4))) (math.floor (/ (- year 1) 100))) (math.floor (/ (- year 1) 400))) 7))

    (if (or (and (= (% year 4) 0) (~= (% year 100) 0)) (= (% year 400) 0))
      (tset daysPerMonth 2 29))

    (fn center [str width]
      (let [fill1 (math.floor (/ (- width (str:len)) 2))
            fill2 (- (- width (str:len)) fill1)]
        (.. (.. (string.rep " " fill1) str) (string.rep " " fill2))))

    (fn make-month [name skip days]
      (var cal [(center name monthWidth) title])
      (var curday (- 1 skip))
      (var done? false)
      (while (not done?)
        (let [line {}]
          (for [i 1 7]
            (if (or (< curday 1) (> curday days))
              (tset line i "  ")
              (tset line i (string.format "%2d" curday)))
            (set curday (+ curday 1)))
          (tset cal (+ (# cal) 1) (table.concat line " ")))
        (when (> (# cal) 9)
          (set done? true)))
      cal)

    (var calendar {})
    (var dpm "")
    (each [i month (ipairs months)]
      (set dpm (. daysPerMonth i))
      (tset calendar i (make-month month startDay dpm))
      (set startDay (% (+ startDay dpm) 7)))

    (io.write (.. "\n" (center (.. "--- " year " ---") (+ (* 3 monthWidth) (* 2 sep))) "\n"))

    (for [q 0 3 1]
      (for [l 1 9 1]
        (var line {})
        (for [m 1 3 1]
          (tset line m (. (. calendar (+ (* q 3) m)) l)))
        (io.write (.. (table.concat line (string.rep " " sep)) "\n"))))))

(fn main []
  (if (~= (# arg) 1)
    (usage)
    (print-cal (. arg 1))))

(main)
