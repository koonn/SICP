; f(a) f(b) 間の０点の探索
(define (average a b)
  (/ (+ a b) 2))

(define (close-enough? a b)
  (< (abs (- a b)) 0.001))


(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
        (cond ((positive? test-value)
              (search f neg-point midpoint))
              ((negative? test-value)
              (search f midpoint pos-point))
              (else midpoint))))))

(search (lambda (x) (- (* x x) 1)) 0 5)

; neg pos を事前に探索しなくてもよくする
(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (positive? a-value) (negative? b-value))
            (search f b a))
          ((and (negative? a-value) (positive? b-value))
            (search f a b))
          (else
            (error "Values are not of opposite sign" a b)))))
