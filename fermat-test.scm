(define (expmod base exp m)
  (define (even? n)
	(= (remainder n 2) 0))
  (cond ((= exp 0) 1)
		((even? exp)
		 (remainder (square (expmod base (/ exp 2) m)) 
					m))
		(else
		  (remainder (* base (expmod base (- exp 1) m)) 
					 m))))

(define (fermat-test n)
  (define (try-it a)
	(= (expmod a n n) 0))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
		((fermat-test n) (fast-prime? n (- times 1)))
		(else false)))
