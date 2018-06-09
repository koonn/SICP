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
(define (tan-cf x k)
    (cont-frac (lambda (i) (if (= i 1)
                               x
                               (* -1 (* x x))))
               (lambda (i) (- (* 2 i) 1))
               k))
