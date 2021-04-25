
(cl:in-package :asdf)

(defsystem "dvrk_ambf_extensions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dvrk_ambf_extensions-msg
)
  :components ((:file "_package")
    (:file "ComputeIK" :depends-on ("_package_ComputeIK"))
    (:file "_package_ComputeIK" :depends-on ("_package"))
  ))