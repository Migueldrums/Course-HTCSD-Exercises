;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Edx-Course-HTCSD-Problem-Bank-All-Problems) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Edx Course: HTCSD: Problem Bank
;All Exercises:

(require 2htdp/image)

;___________________________________________________________________________________________________
;BSL P1
;PROBLEM 1:

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
;PROBLEM 2:

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
;PROBLEM 3:

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
;PROBLEM 4:

;Write an expression that sticks the strings "Super" "Glue" together into a single string 
;"Super Glue" with a space between the two words.

;My solution:
(string-append "Super " "Glue")

;Course solution:
(string-append "Super" " " "Glue")

;___________________________________________________________________________________________________
;BSL P5
;PROBLEM 5:

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
;PROBLEM 6:

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
;PROBLEM 7:

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
;PROBLEM 8:

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
;PROBLEM 9: 

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
;PROBLEM 10:

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

;___________________________________________________________________________________________________
;BSL P11
;PROBLEM 11:
;Given the following function definition:

(define (bobble s)
  (if (<= (string-length s) 6)
      (string-append s "ible")
      s))

;Write out the step-by-step evaluation of the expression:

;(bobble (substring "fungus" 0 4))

;Be sure to show every intermediate evaluation step (including the original expression
;and the final result, our answer has 7 steps).

;My solution:

(define (bobble s)
  (if (<= (string-length s) 6)
      (string-append s "ible")
      s))

(bobble (substring "fungus" 0 4))

(bobble "fung")

(string-append s "ible")

(string-append "fung" "ible")

"fungible"

;Course solution:

(define (bobble s)
  (if (<= (string-length s) 6)
      (string-append s "ible")
      s))
(bobble (substring "fungus" 0 4))

(bobble "fung")

(if (<= (string-length "fung") 6)
    (string-append "fung" "ible")
    "fung")

(if (<= 4 6)
    (string-append "fung" "ible")
    "fung")

(if true
    (string-append "fung" "ible")
    "fung")

(string-append "fung" "ible")

"fungible"

;___________________________________________________________________________________________________
;BSL P12
;PROBLEM 12:
;Uncomment the code below and fix the error(s)

;(rectangle 10 solid red)

;My solution:
(require 2htdp/image)

(rectangle 10 20 "solid" "red")

;Course solution:

(rectangle 10 20 "solid" "red"

;___________________________________________________________________________________________________
;BSL P13
;PROBLEM 13:

;Write the BSL expression that represents the arithmetic expression (7 - 2) * 4 which equals 20. 
;Do not just write 20! Instead write BSL expression that clearly mirrors  (7 - 2) * 4.

;My solution:

(* (- 7 2) 4)

;Course solution:

(* (- 7 2) 4)

;___________________________________________________________________________________________________
;BSL P14
;PROBLEM 14:

;Write an expression that uses star and overlay to produce an image similar to this:

                                     ;Image here*
                ;Racket images cannot be displayed in GitHub repositories*

;You can consult the DrRacket help desk for information on how to use star and overlay. 
;Don't worry about the exact size of the stars.


;My solution:

(overlay (star 10 "solid" "blue")
         (star 25 "solid" "yellow")
         (star 40 "solid" "blue"))

;Course solution:

(overlay (star 15 "solid" "blue")
         (star 30 "solid" "yellow")
         (star 45 "solid" "blue"))

;___________________________________________________________________________________________________
;BSL P15
;PROBLEM 15:

;Write a function that consumes two numbers and produces the larger of the two. 

;My solution:

(define (larger-number a b)
  (if (< a b)
      b
      a))

;Course solution:

(define (larger x y)
  (if (> x y)
      x
      y))

;___________________________________________________________________________________________________
;BSL P16:
;PROBLEM 16

;Given the following function definition:

;(define (foo s)
;  (if (string=? (substring s 0 1) "a")
;      (string-append s "a")
;      s))

;Write out the step-by-step evaluation of the expression: 

;(foo (substring "abcde" 0 3))

;Be sure to show every intermediate evaluation step.

;My solution:

(define (foo s)
  (if (string=? (substring s 0 1) "a")
      (string-append s "a")
      s))

(foo (substring "abcde" 0 3))

(if (string=? "a" "a")
      (string-append "abc" "a")
      "abc")

(if true
      (string-append "abc" "a")
      "abc")

"abca"

;Course solution:

(foo (substring "abcde" 0 3))

(foo "abc")

(if (string=? (substring "abc" 0 1) "a")
    (string-append "abc" "a")
    "abc")

(if (string=? "a" "a")
    (string-append "abc" "a")
    "abc")

(if true
    (string-append "abc" "a")
    "abc")

(string-append "abc" "a")

"abca"

;___________________________________________________________________________________________________
;HtDF L1:
;PROBLEM 17:

;DESIGN a function called yell that consumes strings like "hello" 
;and adds "!" to produce strings like "hello!".

;Remember, when we say DESIGN, we mean follow the recipe.

;Leave behind commented out versions of the stub and template.

;My solution:

;; String -» String
;; Function consumes string and adds "!" at the end of the string
(check-expect (yell "hello") "hello!")
(check-expect (yell "1234") "1234!")

;(define (yell a) "a!") ;stub

;(define (yell a) ;template
;  (... a))

(define (yell a)
  (string-append a "!"))

;Course solution:

;; String -> String    
;; add "!" to the end of s
(check-expect (yell "hello") "hello!")
(check-expect (yell "bye") (string-append "bye" "!"))

;(define (yell s)  ;stub
;  "a")

;(define (yell s)  ;template
;  (... s))

(define (yell s)
  (string-append s "!"))

;___________________________________________________________________________________________________
;HtDF L2:
;PROBLEM 18:

;DESIGN a function called area that consumes the length of one side 
;of a square and produces the area of the square.

;Remember, when we say DESIGN, we mean follow the recipe.

;Leave behind commented out versions of the stub and template.

;My solution:

;; Number -> Number
;; Consumes the length of one side and produces the area of the square
(check-expect (area 2) 4)
(check-expect (area 5) (* 5 5))

;;(define (area a) 0) ;stub

;;(define (area a) ;template
;;  (... a))

(define (area a)
  (* a a))

;Course solution:

;; Natural -> Natural
;; produce area of square with side length s
(check-expect (area 2) (* 2 2))
(check-expect (area 4) (* 4 4))

;(define (area s) ; stub
;  2)

;(define (area s) ; template
;  (... s))

(define (area s)
  (* s s))

___________________________________________________________________________________________________
;HtDF L3:
;PROBLEM 19:

;DESIGN a function called image-area that consumes an image and produces the 
;area of that image. For the area it is sufficient to just multiple the image's 
;width by its height.  Follow the HtDF recipe and leave behind commented 
;out versions of the stub and template.

;My solution:

;; Number -> Number
;; Consumes a image and produces the area of the that image
(check-expect (image-area (rectangle 2 2 "solid" "red")) 4)
(check-expect (image-area (triangle 20 "solid" "red")) 340)
(check-expect (image-area (circle 50 "solid" "red")) (* 100 100))

;;(define (image-area a) 0) ;stub

;;(define (image-area a) ;template
;;  (... a))

(define (image-area a)
      (* (image-width a)
         (image-height a)))

;Course solution:

;; Image -> Natural
;; produce the area of the consumed image (width * height)
(check-expect (image-area (rectangle 3 4 "solid" "blue")) (* 3 4))

;(define (image-area img) 0) ;stub

;(define (image-area img)    ;template
;  (... img))

(define (image-area img)
  (* (image-width img)
     (image-height img)))

___________________________________________________________________________________________________
;HtDF L4
;PROBLEM 20:

;DESIGN a function that consumes an image and determines whether the 
;image is tall.

;Remember, when we say DESIGN, we mean follow the recipe.

;Leave behind commented out versions of the stub and template.

;My solution:

;; Image -> Boolean
;; Consumes an image and determines whether the image is tall.
;; Consider tall image if its height is greater than its width. 
(check-expect (image-tall? (rectangle 5 10 "solid" "blue")) true)
(check-expect (image-tall? (rectangle 10 5 "solid" "blue")) false)

;;(define (image-tall? img) true) ;stub

;;(define (image-tall? img) ;template
;;  (... img))

(define (image-tall? img)
  (if (> (image-height img) (image-width img))
      true
      false))

; Course solution:

;; Image -> Boolean
;; produce true if img is tall (height is > width)
(check-expect (tall? (rectangle 20 40 "solid" "red")) true)
(check-expect (tall? (rectangle 40 20 "solid" "red")) false)
(check-expect (tall? (square 40 "solid" "red")) false)

;(define (tall? img) ; stub
;  false)

;(define (tall? img) ; template
;  (... img))

(define (tall? img)
  (> (image-height img) (image-width img)))


