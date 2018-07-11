(load "helper.lisp")

(defun solve (n)
  (loop for i from 2 to (+ (isqrt n) 1)
	when (and (= 0 (mod n i)) (primep i)) maximize i))

(print (solve 600851475143))
