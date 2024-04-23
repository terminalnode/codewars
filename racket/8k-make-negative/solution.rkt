#lang racket/base

(provide make-negative)

(define (make-negative n)
  (if (> n 0) (- n) n))