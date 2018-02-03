#!/Usr/local/bin/gosh
(define (fasr-expt b n)
  (iter 1 b n))

(define (even? n)
  (= (remainder n 2) 0))

(define (iter a b n)
  (cond ((= n 0) 1)
        ((even? n) (iter a (* b b) (/ n 2)))
        (else (iter (* a b) b (- n 1)))))
