#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
      x)))

(define (improve guess x)
  (average guess (/ x guess)))


(define (good-enough? guess x)
  (< (abs (- (sq guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (average x y)
  (/ (+ x y) 2))

(define (sq x)
  (* x x))  
