#lang racket

;; distance-to-origin.rkt : Contains Recipie for finding distance from Origin to a given point in X-Y plane

;; Goal: Find distance from Origin to the given point in X-Y plane
(require rackunit)
(require "extras.rkt") 
(check-location "01" "q1.rkt")

(provide distance-to-origin) 

;; DATA DEFINITIONS: none


;; distance-to-origin: Real Real -> Real          
;; GIVEN: X and Y co-ordinates of a point, 
;; RETURNS: Distance from Origin to the given point on X-Y plane.
;; EXAMPLES:
;; (distance-to-origin 1 1) = 1.414
;; (distance-to-origin 3 -2) = 3.60
;; DESIGN STRATEGY: Combine simpler functions

    (define (distance-to-origin x y)
      (sqrt (+(* x x) (* y y)))
      )


;; TESTS
(begin-for-test
  (check-equal? (distance-to-origin 1 1) 1.4142135623730951 
    "Distance from (0,0) to (1,1)should be 1.4142135623730951 Units.")
  (check-equal? (distance-to-origin 3 -2) 3.605551275463989 
    "Distance from (0,0) to (3,-2) should be 3.605551275463989 Units"))
