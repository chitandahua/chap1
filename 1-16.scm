(define (myexpt b n)
  (define (expt-iter b n a) 
	(define (even? n) (= (remainder n 2) 0))
	(cond ((= n 0 ) a)
		  ((even? n) (expt-iter (* b b) (/ n 2) a))
		  (else (expt-iter b (- n 1) (* a b)))))
  (expt-iter b n 1))
