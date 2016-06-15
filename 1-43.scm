;(define (repeated f n)
;  (if (= n 1)
;	  f
;	  (lambda (x) (f ((repeated f (- n 1)) x)))))
(define (compose f g)
  (lambda (x) (f (g x))))
(define (repeated f n)
  (if (= n 1)
	  f
	  (compose f (repeated f (- n 1)))))
