(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;; Let's evaluate (add-1 zero)
;(add-1 zero)
;(add-1 (lambda (f) (lambda (x) x)))
;(lambda (f) (lambda (x) (f x)))   ; (n f) -> ((lambda (f) (lambda (x) x)) f) -> (lambda (x) x)

(define one
  (lambda (f) (lambda (x) (f x))))


;; So 0 is a procedure that apply f to x 0 times. One applies f to x 1 time.
;; Let's evaluate (add-1 one)
;(add-1 one)
;(add-1 (lambda (f) (lambda (x) (f x))))
;(lambda (f) (lambda (x) (f (f x))))  ; (n f) -> ((lambda (f) (lambda (x) (f x))) f) -> (lambda (x) (f x))

(define two
  (lambda (f) (lambda (x) (f (f (x))))))
; add-1 take some representation of a number (n) and constructs a procedure that (lambda (f))
; that represents (n+1). It's achived due to some transformation (f ((n f) x)). Those transformations
; are supposed to produce something like (f (f (f x))). Let's consider them one more time:
; n -> (lambda (f) (lambda (x) (f (f x))))
; (n f) -> (lambda (x) (f (f x)))
; ((n f) x) -> (f (f x))
; (f ((n f) x)) -> (f (f (f x)))

;; Let's write our + procedure.
;(define (+ n m))
;; We already have readymade transformation for one argument ((m f) x)
;; It would map to something like (f (f x)) (depends on value of number m
;; Now we need to add n to this construct (instead of "one" (f (.. in add-1.
;; What we need is a procedure like (lambda (x) (f (f x))) that would be applied to second argument.
;; Well we already have that transformation. It's:
;(m f)

; Now we can write the whole procedure plus:
(define (+ n m)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))
; It was as easy as pie.

;例えば 2 + 3の場合、f(f(a))のaにf(f(f(x)))を入れることで、f(f(f(f(f(x)))))となり、５を表現できることとなる。
