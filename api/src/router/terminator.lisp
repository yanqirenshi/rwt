(in-package :rwt.api.router)

(export '*terminator*)

(defun readiness-check (env)
  (declare (ignore env))
  (response 200 "Readiness Check OK!"))

(defun liveness_check (env)
  (declare (ignore env))
  (response 200 "Liveness Check OK!"))

(defvar *terminator*
  (lambda (env)
    (let ((path (getf env :path-info)))
      (cond ((string= "/readiness_check" path) (readiness-check env))
            ((string= "/liveness_check"  path) (liveness_check  env))
            (t (response 404 "Page Not Found"))))))
