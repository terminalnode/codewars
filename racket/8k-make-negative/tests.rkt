#lang racket
(require "solution.rkt")
(require rackunit
         rackunit/gui)

(define (test n e)
  (check-equal? (make-negative n) e
                (~a "make-negative of " n
                    " should return " e)))
(test/gui
 #:wait? #t
 (test-suite
  "make negative"
  (test-case
   "basic tests"
   (test 42 -42)
   (test -9 -9)
   (test 0 0)
   (test 1 -1)
   (test -1 -1)
   (test 0.12 -0.12)
   (test 0.00001 -0.00001)
   (test -0.00001 -0.00001))))