(defsystem "rwt.api"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ("rwt.core")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "rwt.api/tests"))))

(defsystem "rwt.api/tests"
  :author ""
  :license ""
  :depends-on ("rwt.api"
               "rove")
  :components ((:module "tests"
                :components
                        ((:file "main")
                         (:module "router"
                          :components
                                  ((:file "package")
                                   (:file "utils")
                                   (:file "v1")
                                   (:file "terminator"))))))
  :description "Test system for rwt.api"
  :perform (test-op (op c) (symbol-call :rove :run c)))
