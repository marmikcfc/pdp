#lang racket


;; string-insert.rkt : Contains Recipie for inserting '_' in a string at given index

;; Goal: insert '_' in a non empty string at given index 
(require rackunit)
(require "extras.rkt") 

(check-location "01" "q4.rkt")

(provide string-insert)

;; DATA DEFINITIONS: none


;; string-insert: String PosNum -> String          
;; GIVEN: String and a Natural Number, 
;; RETURNS: Inserts '_' in a String at given index if the given number isn't out of bounds and the string isn't empty.
;; EXAMPLES:
;; (string-insert "" 3) = ""
;; (string-insert "qwerty" 2) = "qw_erty"
;; (string-insert "qwerty" 21) = "qwerty" 
;; DESIGN STRATEGY: Combine simpler functions

    
(define (string-insert string i)
	(if (= 0 (string-length string))
		""
                (if (> i (string-length string))
                    string
                    (string-append
			(substring string 0 i)
			"_"
			(substring string i (string-length string))))))

;; TESTS
(begin-for-test
  (check-equal? (string-insert "" 3) "" 
    "Should not insert in empty string")
  (check-equal? (string-insert "qwerty" 12) "qwerty" 
    "Index out of bounds")
  (check-equal? (string-insert "qwerty" 2) "qw_erty" 
    "Returned string should be qw_erty"))



