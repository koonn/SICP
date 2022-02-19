(define (perimeter rectangle)
  (let  ((h (height rectangle))
         (w (width rectangle)))
  (* 2 (+ h w))))

(define (area rectangle)
  (let ((h (height rectangle))
        (w (width rectangle)))
  (* h w)))

;;抽象の壁
(define (height rectangle)
  (car rectangle))

(define (width rectangle)
  (cdr rectangle))

;;抽象の壁
(define (make-rectangle h w)
  (cons h w))

;;抽象の壁(点からやる場合)

(define (make-width-from-point start end)
  (abs (- (x-point start)
          (x-point end))))

(define (make-height-from-point start end)
  (abs (- (y-point start)
          (y-point end))))

;;抽象の壁
(define (x-point pt)
  (car pt))
(define (y-point pt)
  (cdr pt))
(define (make-point x y)
  (cons x y))

;test
(define t (make-rectangle 2 5))
(perimeter t)
(area t)

(define startp (make-point 1 1))
(define endp (make-point 3 6))
(define u (make-rectangle
            (make-height-from-point startp endp)
            (make-width-from-point startp endp)))
(perimeter u)
(area u)
