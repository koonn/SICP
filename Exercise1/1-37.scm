;a　再帰
(define (cont-frac n d k)
  (define (rec i)
    (if (> i k)
        0
        (/ (n i)
          (+ (d i) (rec (+ i 1) k)))))
  (rec 1 k))


; 11で４桁の精度
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)

;b 反復
(define (cont-frac n d k)
  (define (iter ans k)
    (if (=  k 0)
        ans
        (iter (/  (n k)
                  (+ (d k) ans))
              (- k 1))))
  (iter 0 k))
