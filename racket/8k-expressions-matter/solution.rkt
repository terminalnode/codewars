#lang racket/base
(provide expressions-matter)

(define (expressions-matter a b c)
  (max
   (+ a b c)
   (* a (+ b c))
   (* (+ a b) c)
   (+ (* a b) c)
   (* a b c)))