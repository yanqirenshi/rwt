(defpackage rwt.api
  (:use :cl)
  (:export *router-v1*))
(in-package :rwt.api)

(defvar *router-v1*
  (lambda (env)
    `(200 (:content-type "text/plain") ,(list (getf env :path-info)))))
