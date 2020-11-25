(in-package :rwt.api.router)

(export '*v1*)

(defvar *v1*
  (lambda (env)
    `(200 (:content-type "text/plain") ,(list (getf env :path-info)))))
