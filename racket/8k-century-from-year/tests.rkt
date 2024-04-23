#lang racket
(require "solution.rkt")
(require rackunit
         rackunit/gui)

(test/gui
 #:wait? #t
 (test-suite
  "century"
  (test-case "1705" (check-equal? (century 1705) 18))
  (test-case "1900" (check-equal? (century 1900) 19))
  (test-case "1601" (check-equal? (century 1601) 17))
  (test-case "2000" (check-equal? (century 2000) 20))
  (test-case "89" (check-equal? (century 89) 1))))
