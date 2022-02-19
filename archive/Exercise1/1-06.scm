#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;;new-if にも来ていない。
;;sqrt-iterが無限に呼び出されてしまっている。
;;特殊形ではないため、
;;じゃあなんで、1.5はifを使っているのにループがうまくいかないのか？

    
