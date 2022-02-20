#!/usr/bin/racket
#lang racket

;;;; Newton法によって、平方根を求める手続き

;; Newton法の本体
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x))
    )

;; 推定値を更新する関数
(define (improve guess x)
    (average
        guess
        (/ x guess)
        )
    )

;; 平均を計算する関数
(define (average x y)
    (/
        (+ x y)
        2
        )
    )

;; 精度が十分良いかを判定する関数(guessの2乗と元の数値の差分を判定)
(define (good-enough? guess x)
    (< 
        (abs 
            (- 
                (square guess) 
                x
                )
            )
        0.001
        )
    )

;; 絶対値を求める関数
(define (abs x)
    (cond 
        ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
        )
    )

;; 2乗を計算する関数
(define (square x) (* x x))


;; Newton法を始める関数
(define (sqrt x)
    (sqrt-iter 1.0 x)
    )

;; 実行してみる
(require racket/trace) ; デバッグのためのトレース関数
(trace sqrt-iter)
(trace square)

(sqrt 8)