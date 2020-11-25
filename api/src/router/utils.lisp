(in-package :rwt.api.router)

(defun response (code msg)
  (list code
        (list :content-type "text/plain")
        (list msg)))
