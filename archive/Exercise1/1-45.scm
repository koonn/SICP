(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))



(define (average x y)
    (/ (+ x y) 2.0))

(define (average-damp f)
  (lambda (x) (average x (f x))))



(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated fc n)
  (define (iter n k)
    (if (= n k)
        fc
        (compose fc (iter n (+ k 1)))))
  (iter n 1))

; ここから
; xのn乗根 を計算する。m回平均緩和を作用させる。

(define (nroot x n m first-guess)
  (define f
    (lambda (y) (/ x (expt y (- n 1)))))
