
(cl:in-package :asdf)

(defsystem "waypoint_navigator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExecutePathFromFile" :depends-on ("_package_ExecutePathFromFile"))
    (:file "_package_ExecutePathFromFile" :depends-on ("_package"))
    (:file "GoToHeight" :depends-on ("_package_GoToHeight"))
    (:file "_package_GoToHeight" :depends-on ("_package"))
    (:file "GoToPoseWaypoints" :depends-on ("_package_GoToPoseWaypoints"))
    (:file "_package_GoToPoseWaypoints" :depends-on ("_package"))
    (:file "GoToWaypoint" :depends-on ("_package_GoToWaypoint"))
    (:file "_package_GoToWaypoint" :depends-on ("_package"))
    (:file "GoToWaypoints" :depends-on ("_package_GoToWaypoints"))
    (:file "_package_GoToWaypoints" :depends-on ("_package"))
  ))