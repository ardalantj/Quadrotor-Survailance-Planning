;; Auto-generated. Do not edit!


(when (boundp 'waypoint_navigator::GoToPoseWaypoints)
  (if (not (find-package "WAYPOINT_NAVIGATOR"))
    (make-package "WAYPOINT_NAVIGATOR"))
  (shadow 'GoToPoseWaypoints (find-package "WAYPOINT_NAVIGATOR")))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOPOSEWAYPOINTS")
  (make-package "WAYPOINT_NAVIGATOR::GOTOPOSEWAYPOINTS"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOPOSEWAYPOINTSREQUEST")
  (make-package "WAYPOINT_NAVIGATOR::GOTOPOSEWAYPOINTSREQUEST"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOPOSEWAYPOINTSRESPONSE")
  (make-package "WAYPOINT_NAVIGATOR::GOTOPOSEWAYPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass waypoint_navigator::GoToPoseWaypointsRequest
  :super ros::object
  :slots (_waypoints _mission_id ))

(defmethod waypoint_navigator::GoToPoseWaypointsRequest
  (:init
   (&key
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:mission_id __mission_id) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   (setq _mission_id __mission_id)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:mission_id
   (&rest __mission_id)
   (if (keywordp (car __mission_id))
       (send* _mission_id __mission_id)
     (progn
       (if __mission_id (setq _mission_id (car __mission_id)))
       _mission_id)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; std_msgs/String _mission_id
    (send _mission_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; std_msgs/String _mission_id
       (send _mission_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String _mission_id
     (send _mission_id :deserialize buf ptr-) (incf ptr- (send _mission_id :serialization-length))
   ;;
   self)
  )

(defclass waypoint_navigator::GoToPoseWaypointsResponse
  :super ros::object
  :slots ())

(defmethod waypoint_navigator::GoToPoseWaypointsResponse
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

(defclass waypoint_navigator::GoToPoseWaypoints
  :super ros::object
  :slots ())

(setf (get waypoint_navigator::GoToPoseWaypoints :md5sum-) "0b363140d3a9fe53d1402ab7ca233130")
(setf (get waypoint_navigator::GoToPoseWaypoints :datatype-) "waypoint_navigator/GoToPoseWaypoints")
(setf (get waypoint_navigator::GoToPoseWaypoints :request) waypoint_navigator::GoToPoseWaypointsRequest)
(setf (get waypoint_navigator::GoToPoseWaypoints :response) waypoint_navigator::GoToPoseWaypointsResponse)

(defmethod waypoint_navigator::GoToPoseWaypointsRequest
  (:response () (instance waypoint_navigator::GoToPoseWaypointsResponse :init)))

(setf (get waypoint_navigator::GoToPoseWaypointsRequest :md5sum-) "0b363140d3a9fe53d1402ab7ca233130")
(setf (get waypoint_navigator::GoToPoseWaypointsRequest :datatype-) "waypoint_navigator/GoToPoseWaypointsRequest")
(setf (get waypoint_navigator::GoToPoseWaypointsRequest :definition-)
      "
geometry_msgs/Pose[] waypoints
std_msgs/String mission_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/String
string data
---

")

(setf (get waypoint_navigator::GoToPoseWaypointsResponse :md5sum-) "0b363140d3a9fe53d1402ab7ca233130")
(setf (get waypoint_navigator::GoToPoseWaypointsResponse :datatype-) "waypoint_navigator/GoToPoseWaypointsResponse")
(setf (get waypoint_navigator::GoToPoseWaypointsResponse :definition-)
      "
geometry_msgs/Pose[] waypoints
std_msgs/String mission_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/String
string data
---

")



(provide :waypoint_navigator/GoToPoseWaypoints "0b363140d3a9fe53d1402ab7ca233130")


