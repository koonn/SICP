#!/Usr/local/bin/gosh

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

(define (double x) (+ x x))
(define (halve x) (/ x 2))


(define (fast* a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast* a (halve b))))
        (else (+ a (fast* a (- b 1))))))

