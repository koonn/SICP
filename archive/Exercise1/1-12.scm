#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-
(define (f m n)
  (if (or (= n 1) (= n m))
      1
      (+ (f (- m 1) (- n 1)) (f (- m 1) n))))
