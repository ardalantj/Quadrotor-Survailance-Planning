;; Auto-generated. Do not edit!


(when (boundp 'waypoint_navigator::GoToWaypoints)
  (if (not (find-package "WAYPOINT_NAVIGATOR"))
    (make-package "WAYPOINT_NAVIGATOR"))
  (shadow 'GoToWaypoints (find-package "WAYPOINT_NAVIGATOR")))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTS")
  (make-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTS"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTSREQUEST")
  (make-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTSREQUEST"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTSRESPONSE")
  (make-package "WAYPOINT_NAVIGATOR::GOTOWAYPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass waypoint_navigator::GoToWaypointsRequest
  :super ros::object
  :slots (_points ))

(defmethod waypoint_navigator::GoToWaypointsRequest
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass waypoint_navigator::GoToWaypointsResponse
  :super ros::object
  :slots ())

(defmethod waypoint_navigator::GoToWaypointsResponse
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

(defclass waypoint_navigator::GoToWaypoints
  :super ros::object
  :slots ())

(setf (get waypoint_navigator::GoToWaypoints :md5sum-) "3fb3f9dacc279b964c4c8341122c34df")
(setf (get waypoint_navigator::GoToWaypoints :datatype-) "waypoint_navigator/GoToWaypoints")
(setf (get waypoint_navigator::GoToWaypoints :request) waypoint_navigator::GoToWaypointsRequest)
(setf (get waypoint_navigator::GoToWaypoints :response) waypoint_navigator::GoToWaypointsResponse)

(defmethod waypoint_navigator::GoToWaypointsRequest
  (:response () (instance waypoint_navigator::GoToWaypointsResponse :init)))

(setf (get waypoint_navigator::GoToWaypointsRequest :md5sum-) "3fb3f9dacc279b964c4c8341122c34df")
(setf (get waypoint_navigator::GoToWaypointsRequest :datatype-) "waypoint_navigator/GoToWaypointsRequest")
(setf (get waypoint_navigator::GoToWaypointsRequest :definition-)
      "
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
")

(setf (get waypoint_navigator::GoToWaypointsResponse :md5sum-) "3fb3f9dacc279b964c4c8341122c34df")
(setf (get waypoint_navigator::GoToWaypointsResponse :datatype-) "waypoint_navigator/GoToWaypointsResponse")
(setf (get waypoint_navigator::GoToWaypointsResponse :definition-)
      "
geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
")



(provide :waypoint_navigator/GoToWaypoints "3fb3f9dacc279b964c4c8341122c34df")


