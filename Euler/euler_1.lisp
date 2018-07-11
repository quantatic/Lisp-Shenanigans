(load "helper.lisp")

(defun solve() (apply #'+ 
		      (remove-if-not (lambda (x) (or
						   (= (mod x 3) 0)
				    		   (= (mod x 5) 0))) 
				     (loop for i from 1 below 1000 collect i))))

(print (solve))
