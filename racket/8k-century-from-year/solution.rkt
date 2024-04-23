#lang racket/base
(provide century)

(define (century year)
  (quotient (+ year 99) 100))
  