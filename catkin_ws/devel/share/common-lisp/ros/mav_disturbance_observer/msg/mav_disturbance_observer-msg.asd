
(cl:in-package :asdf)

(defsystem "mav_disturbance_observer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObserverState" :depends-on ("_package_ObserverState"))
    (:file "_package_ObserverState" :depends-on ("_package"))
  ))