(define (sum term a next b)
  (if (> a b)
	  0
	  (+ (term a)
		 (sum term (next a) next b))))
(define (simpson f a b n)
  ;;variable...to prevent repeated calculation
  (define h (/ (- b a) n))
  ;(define h (* (- b a) (/ 1.0 n))) ;remainder wrong...
  (define (term x)
	(define index (/ (- x a) h))
	;(define index (/ (* (- x a) n) (- b a)))
	(cond ((or (= index 0) (= index n))
		   (f x))
		  ((= (remainder index 2) 0)
		   (* 2 (f x)))
		  (else 
		   (* 4 (f x)))))
  (define (next x)
	(+ x h))
  (/ (* (sum term a next b) h) 3.0))
(define (cube x) (* x x x))
