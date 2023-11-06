#lang sicp
(define (sum term a next b)
  (define (iter a result)
    ;;a==b is in calculate (if cond aroute broute)
    (if (> a b) result
         (iter (next a) (+ result (term a)))))
    (iter a 0)
    )

(sum (lambda (x) x)
           1
           (lambda (i) (+ 1 i))
           10)