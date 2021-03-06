(define (add-rat x y)
  (make-rat (+ (* (numer x) (demon y))
               (* (numer y) (denom x)))
            (* (denom x) (demon y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (demon y))
               (* (numer y) (demon x))
            (* (denom x) (demon y)))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (dvi-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))


(define (make-rat n d)
  (cons n d))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
