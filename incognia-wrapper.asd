(defsystem "incognia-wrapper"
  :version "0.1.0"
  :author "alan alvino"
  :license "MIT"
  :depends-on (:dexador
               :jonathan
               :cl-yaml)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Common Lisp Incognia APIs Wrapper"
  :in-order-to ((test-op (test-op "incognia-wrapper/tests"))))

(defsystem "incognia-wrapper/tests"
  :author "alan alvino"
  :license "MIT"
  :depends-on ("incognia-wrapper"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for incognia-wrapper"
  :perform (test-op (op c) (symbol-call :rove :run c)))
