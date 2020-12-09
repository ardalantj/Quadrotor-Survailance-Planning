;; Auto-generated. Do not edit!


(when (boundp 'waypoint_navigator::GoToWaypoint)
  (if (not (find-package "WAYPOINT_NAVIGATOR"))
    (make-package "WAYPOINT_NAVIGATOR"))
  (shadow 'GoToWaypoint (find-package "WAYPOINT_NAVIGATOR")))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINT")
  (make-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINT"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTREQUEST")
  (make-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTREQUEST"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTRESPONSE")
  (make-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass waypoint_navigator::GoToWaypointRequest
  :super ros::object
  :slots (_point ))

(defmethod waypoint_navigator::GoToWaypointRequest
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass waypoint_navigator::GoToWaypointResponse
  :super ros::object
  :slots ())

(defmethod waypoint_navigator::GoToWaypointResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass waypoint_navigator::GoToWaypoint
  :super ros::object
  :slots ())

(setf (get waypoint_navigator::GoToWaypoint :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get waypoint_navigator::GoToWaypoint :datatype-) "waypoint_navigator/GoToWaypoint")
(setf (get waypoint_navigator::GoToWaypoint :request) waypoint_navigator::GoToWaypointRequest)
(setf (get waypoint_navigator::GoToWaypoint :response) waypoint_navigator::GoToWaypointResponse)

(defmethod waypoint_navigator::GoToWaypointRequest
  (:response () (instance waypoint_navigator::GoToWaypointResponse :init)))

(setf (get waypoint_navigator::GoToWaypointRequest :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get waypoint_navigator::GoToWaypointRequest :datatype-) "waypoint_navigator/GoToWaypointRequest")
(setf (get waypoint_navigator::GoToWaypointRequest :definition-)
      "
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
")

(setf (get waypoint_navigator::GoToWaypointResponse :md5sum-) "a7c84ff13976aa04656e56e300124444")
(setf (get waypoint_navigator::GoToWaypointResponse :datatype-) "waypoint_navigator/GoToWaypointResponse")
(setf (get waypoint_navigator::GoToWaypointResponse :definition-)
      "
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
")



(provide :waypoint_navigator/GoToWaypoint "a7c84ff13976aa04656e56e300124444")


