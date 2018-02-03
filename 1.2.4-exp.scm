`x#!/Usr/local/bin/gosh
;; -*- coding: utf-8 -*-

;;線形再帰
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (-n 1)))))

;;線形反復
(define (expt-iter b counter product)
  (if (=counter 0)
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))

;;
;;逐次平方
;;
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

