; 2で割った商がa, 3で割った商がbとなる。これで対が表せる。

(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (car z)
  (if (= (reminder z 2) 0)
      (+ 1 (car (/ z 2)))
      0))

(define (cdr z)
  (if (= (reminder z 2) 0)
      (+ 1 (cdr (/ z 2)))
      0))
