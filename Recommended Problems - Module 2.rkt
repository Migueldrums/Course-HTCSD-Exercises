;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Recommended Problems - Module 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Recommended Problems - Module 2
(require 2htdp/image)

;PROBLEM 1:

;DESIGN function that consumes a string and determines whether its length is
;less than 5.  Follow the HtDF recipe and leave behind commented out versions 
;of the stub and template.

;My solution:

; string -> boolean
; Determines if the string length is less than 5
(check-expect (function "Day") #true)
(check-expect (function "action") #false)
(check-expect (function "happy") #false)

;(define (function a) #false) ;stub

;(define (function a) ;template
;  (... a))

(define (function a)
  (< (string-length a) 5))

;Course solution:

;; String -> Boolean
;; produce true if length of s is less than 5
(check-expect (less-than-5? "") true)
(check-expect (less-than-5? "five") true)
(check-expect (less-than-5? "12345") false)
(check-expect (less-than-5? "eighty") false)

;(define (less-than-5? s)  ;stub
;  true)

;(define (less-than-5? s)  ;template
;  (... s))

(define (less-than-5? s)
  (< (string-length s) 5))

;___________________________________________________________________________________________________
;PROBLEM 2:

;Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
;and appears to put a box around it. Note that you can do this by creating an "outline" 
;rectangle that is bigger than the image, and then using overlay to put it on top of the image. 
;For example:

;(boxify (ellipse 60 30 "solid" "red")) should produce: image here*

;Remember, when we say DESIGN, we mean follow the recipe.
;Leave behind commented out versions of the stub and template.

;My solution:

;; image -> image
;; Put a box around given image
(check-expect (box (ellipse 60 30 "solid" "red"))
              (overlay (ellipse 60 30 "solid" "red") (rectangle 62 32 "outline" "black")))

(check-expect (box (triangle 60 "solid" "red"))
              (overlay (triangle 60 "solid" "red") (rectangle 62 54 "outline" "black")))

(check-expect (box (circle 40 "solid" "red"))
              (overlay (circle 40 "solid" "red") (rectangle 82 82 "outline" "black")))

;(define (box (ellipse 60 30 "solid" "red")) image) ;stub

;(define (box a) ;template
;  (... a))

(define (box a)
  (overlay a (rectangle (+ (image-width a) 2)
                        (+ (image-height a) 2) "outline" "black")))

;Course solution:

;; Image -> Image
;; Puts a box around given image. Box is 2 pixels wider and taller than given image.
;; NOTE: A solution that follows the recipe but makes the box the same width and height 
;;       is also good. It just doesn't look quite as nice. 
(check-expect (boxify (circle 10 "solid" "red")) 
              (overlay (rectangle 22 22 "outline" "black")
                       (circle 10 "solid" "red")))
(check-expect (boxify (star 40 "solid" "gray")) 
              (overlay (rectangle 67 64 "outline" "black")
                       (star 40 "solid" "gray")))

;(define (boxify i) (circle 2 "solid" "green"))

#;
(define (boxify i)
  (... i))

(define (boxify i)
  (overlay (rectangle (+ (image-width  i) 2)
                      (+ (image-height i) 2)
                      "outline"
                      "black")
           i))
;___________________________________________________________________________________________________
;PROBLEM 3:

;There may be more than one problem with this function design. Uncomment 
;the function design below, and make the minimal changes required to 
;resolve the error that occurs when you run it.

;; Number -> Number
;; doubles n
;(check-expect (double 0) 0)
;(check-expect (double 4) 8)
;(check-expect (double 3.3) (* 2 3.3))
;(check-expect (double -1) -2)

#;
;(define (double n) 0) ; stub

;(define (double n)
;  (* (2 n)))

;My solution:

;; Number -> Number
;; doubles n
(check-expect (doublee 0) 0)
(check-expect (doublee 4) 8)
(check-expect (doublee 3.3) (* 2 3.3))
(check-expect (doublee -1) -2)

#;
(define (doublee n) 0) ; stub

(define (doublee n)
  (* 2 n))

;Course solution:

;; Number -> Number
;; doubles n
(check-expect (double 0) 0)
(check-expect (double 4) 8)
(check-expect (double 3.3) (* 2 3.3))
(check-expect (double -1) -2)


#;
(define (double n) 0) ; stub

(define (double n)
  (* 2 n))