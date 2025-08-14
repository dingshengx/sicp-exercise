#lang racket

(require "utils.rkt")

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))


(define (fib-d n) 
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(timed-run fib 40)
(timed-run fib-d 40)

#|
(timed-run fib 40)
(timed-run fib-d 40)
执行结果如下：
fib耗时: 8436.222900390625 毫秒
102334155
fib-d耗时: 0.00244140625 毫秒
102334155
差别很明显
|#