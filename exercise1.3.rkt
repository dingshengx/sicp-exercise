#lang sicp
; 练习 1.3 定义一个过程,该过程接受三个数字作为参数,并返回两个较大数字的平方和。
(define
  (sumOfSquare a b c)
  (cond
    ((and (>= a b) (>= b c)) (+ (* a a)(* b b)))
    ((and (>= a c) (>= c b)) (+ (* a a)(* c c)))
    ((and (>= b c) (>= c a)) (+ (* b b)(* c c)))
    ((and (>= b a) (>= a c)) (+ (* b b)(* a a)))
    ((and (>= c a) (>= a b)) (+ (* c c)(* a a)))
    ((and (>= c b) (>= b a)) (+ (* c c)(* b b)))
  )
)

(sumOfSquare 1 1 3)