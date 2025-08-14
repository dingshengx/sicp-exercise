#lang racket
(provide timed-run)

(define (timed-run f arg)
  (let ((start (current-inexact-milliseconds))
        (result (f arg)))
    (let ((end (current-inexact-milliseconds)))
      (printf "耗时: ~a 毫秒\n" (- end start))
      result)))
