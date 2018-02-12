(define (make-rat n d)
<<<<<<< HEAD
  (if (> 0 d)
    (cons (- n) (- d))
    (cons n d)))
=======
  (cond ((and (> n 0) (> d 0)) (cons (- n) (- d))))
  (cond ((> d 0) (cons (- n) (- d))))
  (else (cons n d))
>>>>>>> 0a1f99986d799ea21497da71839f7cfb69d457dd
