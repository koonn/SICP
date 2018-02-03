#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-
(define (lsqsm x y z)
  (if (< x y)
    (if (< x z) (sqsm y z) (sqsm x y))
    (if (< y z) (sqsm x z) (sqsm x y))))

(define (sqsm x y)
  (+ (sq x) (sq y)))

(define (sq x)
  (* x x))

(define (sumsq a b)
  (+ (square a) (square b)))

(define (loser a b)
  (if (> a b) b a))

(define (winner a b)
  (if (> a b) a b))

(define (f x0 x1 x2)
  (if (> (loser x0 x1) x2)
      (sumsq x0 x1)
      (sumsq (winner x0 x1) x2)))
