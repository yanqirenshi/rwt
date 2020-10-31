(defpackage rwt.api/tests/main
  (:use :cl
        :rwt.api
        :rove))
(in-package :rwt.api/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :rwt.api)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
