(defpackage rwt.core/tests/main
  (:use :cl
        :rwt.core
        :rove))
(in-package :rwt.core/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :rwt.core)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
