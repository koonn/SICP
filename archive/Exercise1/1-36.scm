(define tolerance 0.00001)


(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (display guess)
      (newline)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))


; 普通の探索
(fixed-point
  (lambda (x) (/ (log 1000) (log x)))
  10)


; 平均緩和
(define (average x y)
  (/ (+ x y) 2))

(fixed-point
  (lambda (x) (average x (/ (log 1000) (log x))))
  10)

; 平均緩和のほうがステップ数が少ない
