#!/Usr/local/bin/gosh

;;1.16
(define (fasr-expt b n)
  (iter 1 b n))

(define (even? n)
  (= (remainder n 2) 0))

(define (iter a b n)
  (cond ((= n 0) 1)
        ((even? n) (iter a (* b b) (/ n 2)))
        (else (iter (* a b) b (- n 1)))))


;;1.17
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

;;1-18
(define (fast* a b)
  (fast*-iter a b 0))

(define (fast*-iter a b c)
  (cond ((= b 0) 0)
        ((even? b) (fast*-iter (double a) (halve b) c))
        (else (fast*-iter a (- b 1) (+ c a)))))
