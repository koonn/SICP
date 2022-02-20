#!/usr/bin/racket
#lang racket

;; 足し算
(+ 100 244)

;; 変数の定義
(define size 5)

(* size size)

;; 手続き(関数)の定義
(define (square x) (* x x))

(square size)

;; 条件式
(define (abs x)
    (cond 
        ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
        )
)

(abs -1)
(abs 0)
(abs 10)

