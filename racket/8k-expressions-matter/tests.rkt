#lang racket
(require "solution.rkt")
(require rackunit
         rackunit/gui)

(test/gui
  #:wait? #t
  (test-suite
   "Expressions Matter"
   (test-case
    "basic tests"
    (check-equal? (expressions-matter 2 1 2) 6)
    (check-equal? (expressions-matter 2 1 1) 4)
    (check-equal? (expressions-matter 2 2 4) 16)
    (check-equal? (expressions-matter 3 3 3) 27)
    (check-equal? (expressions-matter 1 1 1) 3)
    (check-equal? (expressions-matter 1 2 3) 9)
    (check-equal? (expressions-matter 1 3 1) 5)
    (check-equal? (expressions-matter 2 2 2) 8)    
    (check-equal? (expressions-matter 5 1 3) 20)
    (check-equal? (expressions-matter 3 5 7) 105)
    (check-equal? (expressions-matter 5 6 1) 35)
    (check-equal? (expressions-matter 1 6 1) 8)
    (check-equal? (expressions-matter 2 6 1) 14)
    (check-equal? (expressions-matter 6 7 1) 48)    
    (check-equal? (expressions-matter 2 10 3) 60)
    (check-equal? (expressions-matter 1 8 3) 27)
    (check-equal? (expressions-matter 9 7 2) 126)
    (check-equal? (expressions-matter 1 1 10) 20)
    (check-equal? (expressions-matter 9 1 1) 18)
    (check-equal? (expressions-matter 10 5 6) 300)
    (check-equal? (expressions-matter 1 10 1) 12))))