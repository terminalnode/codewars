#lang racket
(require "solution.rkt")
(require rackunit
         rackunit/gui)

(test/gui
 #:wait? #t
 (test-suite "even or odd"
             (test-case "even-or-odd 1 should return \"Odd\""
                        (check-equal? (even-or-odd 1) "Odd"))
             (test-case "even-or-odd 2 should return \"Even\""
                        (check-equal? (even-or-odd 2) "Even"))
             (test-case "even-or-odd -1 should return \"Odd\""
                        (check-equal? (even-or-odd -1) "Odd"))
             (test-case "even-or-odd -2 should return \"Even\""
                        (check-equal? (even-or-odd -2) "Even"))
             (test-case "even-or-odd 0 should return \"Even\""
                        (check-equal? (even-or-odd 0) "Even")))
 )