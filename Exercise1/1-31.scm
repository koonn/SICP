(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

;;factorial
(define (factorial n)
  (define (inc x) (+ x 1))
  (define (identity x) x)
  (product identity 1 inc n))

(define (wallis-pi n)
  (define (square x) (* x x))
  (define (inc x) (+ x 1))
  (define (term x)
    (/ (* 4.0 (square x)) (- (* 4.0 (square x)) 1)))
  (* 2 (product term 1 inc n)))

(define (prooduct term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))
