#lang racket

;; string-last.rkt : Contains Recipie for finding last 1String from a non-empty string
;; Goal: Find last 1String from a non-empty string
(require rackunit)
(require "extras.rkt") 

(check-location "01" "q2.rkt")

(provide string-last)

;; DATA DEFINITIONS: none


;; string-last String -> String          
;; GIVEN: non empty String, 
;; RETURNS: last 1String.
;; EXAMPLES:
;; (string-last "Apple") = #\e
;; (string-last "qwerty") = #\y
;; DESIGN STRATEGY: Combine simpler functions

    (define (string-last s)
      (string-ref s (-(string-length s) 1) )
      )

;; TESTS
(begin-for-test
  (check-equal? (string-last "qwerty") #\y
    "The last 1string of Qwerty is  #\\y ")
  (check-equal? (string-last "Apple") #\e 
    "The last 1string of Apple is  #\\e"))


