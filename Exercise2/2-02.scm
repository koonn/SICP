; segment constructor
(define (make-segment px py)
  (cons px py))

; segment selectors
(define (start-segment s)
  (car s))
(define (end-segment s)
  (cdr s))

; point constructor
(define (make-point x y)
  (cons x y))

; point selectors
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))

; print
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

; mid-point
(define (mid-point s)
  (make-point (/ (+ (x-point (start-point s)) (x-point (end-point s))) 2)
              (/ (+ (y-point (start-point s)) (y-point (end-point s))) 2)))
