;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Edx-Course-HTCSD-Problem-Bank-All-Problems) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Edx Course: HTCSD: Problem Bank
;All Exercises:

(require 2htdp/image)

;___________________________________________________________________________________________________
;BSL P1
;PROBLEM:

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

;____________________________________________________________________________________________________
;BSL P2
;PROBLEM 1:

;Write out the step-by-step evaluation for the following expression: 

(+ (* 2 3) (/ 8 2))

;My solution:
(+ (* 2 3) (/ 8 2))
(+ 6 4)
10

;Course solution:
(+ (* 2 3) (/ 8 2))
(+ 6 (/ 8 2))
(+ 6 4)
10

;PROBLEM 2:

;Write out the step-by-step evaluation for the following expression: 

(* (string-length "foo") 2)

;My solution:
(* (string-length "foo") 2)
(* 3 2)
6

;Course solution:
(* (string-length "foo") 2)
(* 3 2)
6

;____________________________________________________________________________________________________
;BSL P3
;PROBLEM:

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
;BSL P4
;PROBLEM:

;Write an expression that sticks the strings "Super" "Glue" together into a single string 
;"Super Glue" with a space between the two words.

;My solution:
(string-append "Super " "Glue")

;Course solution:
(string-append "Super" " " "Glue")

;___________________________________________________________________________________________________
;BSL P5
;PROBLEM:

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
;BSL P6
;PROBLEM:

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
;BSL P7
;PROBLEM:

;Given the following function definition:

(define (farfle s)
  (string-append s s))

;Write out the step-by-step evaluation of the expression: 

(farfle (substring "abcdef" 0 2))

;Be sure to show every intermediate evaluation step.

;My solution:
(farfle (substring "abcdef" 0 2))
(farfle "ab")
(string-append "ab" "ab")
"abab"

;Course solution:
(farfle (substring "abcdef" 0 2))
(farfle "ab")
(string-append "ab" "ab")
"abab"

;___________________________________________________________________________________________________
;BSL P8
;PROBLEM:

;The background for the Canadian Flag (without the maple leaf) is this:

;Image here* This image can't displayed because GiHub repositories don't support racket images.

;Write an expression to produce that background. (If you want to get the
;details right, officially the overall flag has proportions 1:2, and the 
;band widths are in the ratio 1:2:1.)

;My solution:       
(define base (isosceles-triangle 50 30 "solid" "red"))

(define var
  (overlay/align "center" "bottom"
                 (isosceles-triangle 30 37 "solid" "red")
                 (rotate 60 (triangle 20 "solid" "red"))))

(define maple-leaf
  (overlay/xy (rectangle 3 30 "solid" "red") -25 -30
   (overlay/xy
    (rotate 300 var) -24 -20
   (overlay/xy
     var -16 -5
   (overlay/xy
    (rotate 65 var) 14 -20 base)))))

(define Canadian-Flag
  (beside (rectangle 20 40 "solid" "red")
          (overlay (scale 0.5 maple-leaf) (rectangle 40 40 "solid" "white"))
          (rectangle 20 40 "solid" "red")))

Canadian-Flag

;Course solution:
(beside (rectangle 20 40 "solid" "red")
        (rectangle 40 40 "solid" "white")
        (rectangle 20 40 "solid" "red"))

;___________________________________________________________________________________________________
;BSL P9
;PROBLEM: 

;Write the BSL expression that represents the arithmetic expression:     
;(6 + 3) * (9 - 7)
;which equals 18.  Do not just write 18! Instead, write a BSL expression that clearly 
;mirrors the arithmetic expression.

;My solution:
(* (+ 6 3) (- 9 7))

;Course solution:
(* (+ 6 3)
   (- 9 7))

;___________________________________________________________________________________________________
;BSL P10
;PROBLEM:

;Write an expression that uses triangle, overlay, and rotate to produce an image similar to this:

;Image here* This image can't displayed because GiHub repositories don't support racket images.

;You can consult the DrRacket help desk for information on how to use triangle and overlay.
;Don't worry about the exact size of the triangles.

;My solution:
(overlay (triangle 50 "solid" "green")
         (rotate 180 (triangle 50 "solid" "yellow")))

;Course solution:
(overlay (triangle 50 "solid" "green")
         (rotate 180 
                 (triangle 50 "solid" "yellow")))