(define (f g)
  (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)

; f f を評価すると、中身が(f 2)になっちゃう。fは手続を引数にとるべきなので(2 2)は評価出来ない。
