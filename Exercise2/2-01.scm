(define (make-rat n d)
  (cond ((and (> n 0) (> d 0)) (cons (- n) (- d))))
  (cond ((> d 0) (cons (- n) (- d))))
  (else (cons n d))
