#lang racket


;; string-delete.rkt : Contains Recipie deleting a character at given index in the string

;; Goal: Delete the character at given index in a given String
(require rackunit)
(require "extras.rkt") 

(check-location "01" "q5.rkt")

(provide string-delete)

;; DATA DEFINITIONS: none


;; string-delete: String PosNum -> String          
;; GIVEN: String and a Natural Number, 
;; RETURNS: Delete the character at given index in a given String if the given number isn't out of bounds and the string isn't empty.
;; EXAMPLES:
;; (string-delete "" 3) = ""
;; (string-delete "qwerty" 2) = "qwrty"
;; (string-delete "qwerty" 21) = "qwerty" 
;; DESIGN STRATEGY: Combine simpler functions

(define (string-delete string i)
	(if (= 0 (string-length string))
		""
                (if (> i (string-length string))
                    string
                    (string-append
			(substring string 0 i)
			(substring string (+ 1 i) (string-length string))))))


;; TESTS
(begin-for-test
  (check-equal? (string-delete "" 3) "" 
    "Should not insert in empty string")
  (check-equal? (string-delete "qwerty" 12) "qwerty" 
    "Index out of bounds")
  (check-equal? (string-delete "qwerty" 2) "qwrty" 
    "Returned string should be qw_erty"))



