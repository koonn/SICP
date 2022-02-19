#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-
(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
      x)))

(define (improve guess x)
  (avg3 (* 2 guess) (/ x (sq guess))))


(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (avg3 x y)
  (/ (+ x y) 3))

(define (sq x)
  (* x x))
