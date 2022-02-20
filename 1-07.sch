#!/usr/bin/racket
#lang racket

;;;; 大きい数字だと、終わらなくなる
;;;; 大きい数字の場合、計算できる有限の桁数の中では、丸め誤差が0.01以下になることがない場合が発生する。
;(sqrt 12345678901234)

;;;; 小さい数字だと、精度がめちゃ悪い
;;;; 小さい数字の場合、判定基準の0.01が、精度悪すぎる
;(sqrt 0.00000000123)
;(square (sqrt 0.00000000123))





;;;; Newton法によって、平方根を求める手続き(修正版)

;; Newton法の本体
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)
        )
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
            (/ 
                (- (improve guess x) guess)
                guess
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

(sqrt 12345678901234)
;(square (sqrt 0.00000000123))