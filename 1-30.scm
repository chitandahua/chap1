(define (sum term a next b)
  (define (iter a result)
	(if (> a b)
		result
		(iter (next a) (+ result (term a)))))
  (iter a 0))
(define (cube x) (* x x x))
(define (inc x) (+ x 1))
(define (sum-integers a b)
  (define (identity x) x)
  (sum identity a inc b))
(define (sum-cubes a b)
  (sum cube a inc b))
(define (intergral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
	 dx))
