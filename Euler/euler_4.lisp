(load "helper.lisp")

(defun solve (max-num)
  (loop for i from 1 to max-num
	maximize (or ;have to "or" with 0 to avoid a nil result that the outer loop errors out on
		   (loop for j from 1 to i
			 when (number-palindrome-p (* i j)) maximize (* i j))
		   0)))

(print (solve 999))
