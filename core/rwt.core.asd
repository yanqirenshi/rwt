(defsystem "rwt.core"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "rwt.core/tests"))))

(defsystem "rwt.core/tests"
  :author ""
  :license ""
  :depends-on ("rwt.core"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for rwt.core"
  :perform (test-op (op c) (symbol-call :rove :run c)))
