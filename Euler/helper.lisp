(defun fib (n &optional (a 0) (b 1))
  (cond ((<= n 0) a)
	(t (fib (- n 1) (+ a b) a))))

(defun factorial (n &optional (total 1))
  (cond ((< n 0) 0)
	((= n 0) total)
	(t (factorial (- n 1) (* n total)))))

(defun primep (n)
  (and (> n 1)
       (or (= n 2) (oddp n))
       (loop for i from 3 to (+ 1 (isqrt n))
	     never (zerop (mod n i)))))

(defun palindromep (list)
  (equal list (reverse list)))

(defun number-to-list (num &optional (list ()))
  (cond ((> num 0) (number-to-list (floor num 10) (cons (mod num 10) list)))
	(t list)))

(defun number-palindrome-p (num)
  (equal (number-to-list num) (reverse (number-to-list num))))
