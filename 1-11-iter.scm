( define ( f n ) 
		 ( define ( f-iter a b c count ) 
				  ( cond ( ( < n 3 ) n )
						 ( ( > count n ) c )
						 ( else ( f-iter b
										 c
										 ( + c ( * b 2 ) ( * a 3 ) ) 
										 ( + count 1 ) ) ) ) )
		 ( f-iter 0 1 2 3 ) )
