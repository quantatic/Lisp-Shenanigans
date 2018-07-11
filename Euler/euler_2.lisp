(load "helper.lisp")

(defun solve (max &optional (sum 0) (n 2)) 
  (let ((curr (fib n)))
    (cond ((< curr max) (if (= (mod curr 2) 0)
			  (solve max (+ sum curr) (+ n 1))
			  (solve max sum (+ n 1))))
	  ((>= curr max) sum))))

(print (solve 4000000))
