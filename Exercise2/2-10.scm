;; EXERCISE 2.10
; (define x (make-interval 1 4))
; (define y (make-interval 0 1))
;then
; (div-interval x y)
;returns
; (1.0 . +inf.0)

(define (div-interval x y)
  (if (or (= 0 (lower-bound y))
          (= 0 (upper-bound y)))
      (error "an interval's bound contains 0")
      (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y))))))

(div-interval x y)
