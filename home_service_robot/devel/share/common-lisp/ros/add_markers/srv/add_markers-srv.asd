
(cl:in-package :asdf)

(defsystem "add_markers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "marker_service" :depends-on ("_package_marker_service"))
    (:file "_package_marker_service" :depends-on ("_package"))
  ))