(define (inc x)
  (+ x 1))

(define (double f)
  (lambda (x)
    (f (f x))))

(((double (double double)) inc) 5)
; 21
; incが 2^4=16回適用される。
