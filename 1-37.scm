(define (cont-frac n d k)
 (define (cont-frac-rec i)
   (if (= i 1)
	   (/ (n k) (d k)) 
	   (/ (n (- (+ k 1) i)) 
		  (+ (cont-frac-rec (- i 1))
			 (d (- (+ k 1) i))))))
 (cont-frac-rec k))
(define (cont-frac-iter n d k)
  (define (iter x result)
	(if (= x 0)
		result
		(iter (- x 1)
			  (/ (n x)
				 (+ (d x) result)))))
  (iter k 0))