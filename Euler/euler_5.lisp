(defun solve (max) ;lmao ezpz
  (apply #'lcm     ;lcm gives the smallest number that is divisible by all numbers in the lcm
	 (loop for i from 1 to max collect i)))

(print (solve 20))
