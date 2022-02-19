(define (filtered-accumulate match? combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (match? a)
          (combiner (term a)
                    (filtered-accumulate filter? combiner null-value term (next a) next b)))
          (filtered-accumulate filter? combiner null-value term (next a) next b)))

; 反復

(define (filtered-accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (if (match? a)
            (iter (next a) (combiner (term a) result))
            (iter (next a) result))))
  (iter a null-value))

;a
(define (sum-prime a b)
  (define (square x)
          (* x x))
  (filtered-accumulate prime? + 0 square a inc b))


(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (reminder a b))))

(define (comprise? a b)
  (= (gcd a b) 1))

(define (identify x)
        x)

(define (multip n)
  (define (comprise-n? x)
    (comprise? n x))
  (filtered-accumulate comprise-n? * 1 identify 1 inc n))
