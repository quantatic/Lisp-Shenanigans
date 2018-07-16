(defun merge-sort (list) ;sorts a list with a merge sort
  (if (> (length list) 1)
    (let* ((left-list-length (ash (length list) -1))
	   (right-list-length (- (length list) left-list-length))
	   (left-list (first-n list left-list-length))
	   (right-list (last-n list right-list-length)))
      (merge-lists-sorted
	(merge-sort left-list)
	(merge-sort right-list)))
    list))

(defun merge-lists-sorted (list-a list-b) ;joins 2 lists with the method of a merge sort, base case is 2 lists of 2 elements.
  (let ((first-a (car list-a))
	(first-b (car list-b)))
    (cond ((null first-a) list-b)
	  ((null first-b) list-a)
	  (t (if (< first-a first-b)
	    (cons first-a (merge-lists-sorted (cdr list-a) list-b))
	    (cons first-b (merge-lists-sorted list-a (cdr list-b))))))))

(defun first-n (list n) ;gets first n elements of passed list
  (cond ((or
	   (null list)
	   (<= n 0)) nil)
	(t (cons (car list) (first-n (cdr list) (- n 1))))))

(defun last-n (list n) ;gets last n elements of passed list
  (cond ((< n 0) nil)
	((<= (length list) n) list)
	(t (last-n (cdr list) n))))
