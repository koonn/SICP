(define (repeated fc n)
  (define (iter n k)
    (if (= n k)
        fc
        (compose fc (iter n (+ k 1)))))
  (iter n 1))


;その他
(define (repeated fc n)
  (define (iter fc comp n)
    (cond
     ((= n 0)
      comp)
     (else (iter fc (compose fc comp) (- n 1)))))
  (iter fc fc (- n 1)))
