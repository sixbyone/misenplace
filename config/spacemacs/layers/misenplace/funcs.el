(eval-when-compile (require 'subr-x))

(defun misenplace/apply-function-to-region (fn)
  "Apply a function to a region"
  (interactive "A function to apply to region: ")
  (save-excursion
    (let* ((beg (region-beginning))
           (end (region-end))
           (resulting-text
             (funcall fn
                      (buffer-substring-no-properties beg end))))
          (kill-region beg end)
          (insert resulting-text))))

(defun misenplace/sort-csv (txt)
  "Sort a comma separated string"
  (mapconcat 'identity
             (sort (split-string txt ",") 'string< ) ","))

(defun misenplace/make-tag (txt)
  "Make a tag from the supplied string"
  (replace-regexp-in-string " " "-" (downcase (string-trim txt))))

(defun misenplace/sort-csv-region ()
  "Sort a region of comma separated text"
  (interactive)
  (misenplace/apply-function-to-region 'misenplace/sort-csv))

(defun misenplace/make-tag-from-region ()
  "Create tag from a region text"
  (interactive)
  (misenplace/apply-function-to-region 'misenplace/make-tag))
