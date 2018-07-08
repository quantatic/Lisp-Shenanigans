(defparameter *init-small* 1)
(defparameter *init-big* 500)

(defun guess-my-number ()
  (ash (+ *big* *small*) -1))

(defun smaller ()
  (setf *big* (- (guess-my-number) 1))
  (guess-my-number))

(defun bigger ()
  (setf *small* (+ (guess-my-number) 1))
  (guess-my-number))

(defun init ()
  (setf *small* *init-small*)
  (setf *big* *init-big*)
  (guess-my-number))

(init)
(print (guess-my-number))
