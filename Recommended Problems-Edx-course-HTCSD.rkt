;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Recommended Problems-Edx-course-HTCSD|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;PROBLEM No 1:

;Write two expressions that multiply the numbers 3, 5 and 7. 
;The first should take advantage of the fact that * can accept more than 2 arguments. 
;The second should build up the result by first multiplying 3 times 5 and then multiply the result of that by 7. 

;My solution:

;Expression 1:
(* 3 5 7)
;Expression 2:
(* (* 3 5) 7)

;Course solution:
(* 3 5 7)

(* (* 3 5) 7)
;___________________________________________________________________________________________________
;PROBLEM No 2:

;Use the DrRacket square, beside and above functions to create an image like this one:

;Image here* This image can't displayed because GiHub repositories don't support racket images.
;(Large square made up of four small blue and yellow squares divided equally).

;If you prefer to be more creative feel free to do so. You can use other DrRacket image 
;functions to make a more interesting or more attractive image.

;My solution:
(define one
  (overlay (above (beside (triangle 8 "solid" "yellow")
                          (triangle 8 "solid" "yellow"))
                          (triangle 8 "solid" "yellow"))
                          (rectangle 20 20 "solid" "blue")))

(define two
  (overlay (above (beside (triangle 8 "solid" "blue")
                          (triangle 8 "solid" "blue"))
                          (triangle 8 "solid" "blue"))
                          (rectangle 20 20 "solid" "yellow")))
(above
 (beside one two one two) (beside two one two one))

;Course solution:
(above (beside (square 20 "solid" "blue")
               (square 20 "solid" "yellow"))
       (beside (square 20 "solid" "yellow")
               (square 20 "solid" "blue")))

;___________________________________________________________________________________________________
;PROBLEM No 3:

;Based on the two constants provided, write three expressions to determine whether: 

;1) IMAGE1 is taller than IMAGE2
;2) IMAGE1 is narrower than IMAGE2
;3) IMAGE1 has both the same width AND height as IMAGE2

(define IMAGE1 (rectangle 10 15 "solid" "red"))
(define IMAGE2 (rectangle 15 10 "solid" "red"))

;My solution:
;Expression 1:
(if (> (image-height IMAGE1) (image-height IMAGE2))
    "true"
    "false")

;Expression 2:
(if (< (image-width IMAGE1) (image-width IMAGE2))
    "true"
    "false")

;Expression 3:
(if (and (= (image-width IMAGE1) (image-width IMAGE2))
         (= (image-height IMAGE1) (image-height IMAGE2)))
    "true"
    "false")

;Course solution:
(> (image-height IMAGE1)
   (image-height IMAGE2))

(< (image-width IMAGE1)
   (image-width IMAGE2))

(and (= (image-width IMAGE1) 
        (image-width IMAGE2)) 
     (= (image-height IMAGE1)
        (image-height IMAGE2)))
;___________________________________________________________________________________________________
;PROBLEM No 4:

;Given the following function definition:

(define (foo n)
  (* n n))

;Write out the step-by-step evaluation of the expression: 

(foo (+ 3 4))

;Be sure to show every intermediate evaluation step.

;My solution:
(foo (+ 3 4))
(foo 7)
(* 7 7)
49

;Course solution:
(foo (+ 3 4))
(foo 7)
(* 7 7)
49

;___________________________________________________________________________________________________
;PROBLEM No 5:

;Write a function that consumes two numbers and produces the larger of the two. 

;My solution:

(define (solution a b)
  (if (> a b) 
      a
      b))

;Course solution:
(define (larger x y)
  (if (> x y)
      x
      y))