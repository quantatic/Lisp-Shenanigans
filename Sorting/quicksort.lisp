(defun quicksort (list)
  (let ((pivot (car list))
	(rest-of-list (cdr list)))
    (if pivot ;if the pivot is not nil -- if it is, we were passed an empty list and thus are at the base case
      (let ((lower-list (remove-if-not
			  (lambda (x) (< x pivot))
			  rest-of-list))
	    (upper-list (remove-if-not
			  (lambda (x) (> x pivot))
			  rest-of-list)))
	(funcall #'append (quicksort lower-list) (list pivot) (quicksort upper-list))) ;(quicksort lower) + pivot + (quicksort upper)
      list))) ;if at base case, return the passed list -- ()

