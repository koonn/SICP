#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-
(+ 4 5)
(inc (+ (dec 4) 5))
(inc (+ 3 5))
(inc (inc (+ (dec 3) 5)))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ (dec 1) 5)))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6))
(inc (inc 7))
(inc 8)
9
;;再帰的プロセス


(+ 4 5)
(+ (dec 4) (inc 6))
(+ 3 4)
(+ (dec 3) (inc 7))
(+ 2 3)
(+ (dec 2) (inc 8))
(+ 1 2)
(+ (dec 1) (inc 9))
(+ 0 9)
9
;;反復的プロセス
