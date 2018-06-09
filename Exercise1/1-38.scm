;a　再帰
(define (cont-frac n d k)
  (define (rec i k)
    (if (> i k)
        0
        (/ (n i)
          (+ (d i) (rec (+ i 1) k)))))
  (rec 1 k))

;b 反復
(define (cont-frac n d k)
  (define (iter ans k)
    (if (=  k 0)
        ans
        (iter (/  (n k)
                  (+ (d k) ans))
              (- k 1))))
  (iter 0 k))


  ; 答え
(define (e-cf k)
  (+  2
      (cont-frac (lambda (i) 1.0)
                 (lambda (i) (if (= (remainder i 3) 2)
                                 (* (+ (quotient i 3) 1) 2)
                                 1.0))
                 k)))
