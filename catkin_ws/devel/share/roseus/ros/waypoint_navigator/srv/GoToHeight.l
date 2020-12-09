;; Auto-generated. Do not edit!


(when (boundp 'waypoint_navigator::GoToHeight)
  (if (not (find-package "WAYPOINT_NAVIGATOR"))
    (make-package "WAYPOINT_NAVIGATOR"))
  (shadow 'GoToHeight (find-package "WAYPOINT_NAVIGATOR")))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOHEIGHT")
  (make-package "WAYPOINT_NAVIGATOR::GOTOHEIGHT"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOHEIGHTREQUEST")
  (make-package "WAYPOINT_NAVIGATOR::GOTOHEIGHTREQUEST"))
(unless (find-package "WAYPOINT_NAVIGATOR::GOTOHEIGHTRESPONSE")
  (make-package "WAYPOINT_NAVIGATOR::GOTOHEIGHTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass waypoint_navigator::GoToHeightRequest
  :super ros::object
  :slots (_height ))

(defmethod waypoint_navigator::GoToHeightRequest
  (:init
   (&key
    ((:height __height) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _height __height)
   self)
  (:height
   (&rest __height)
   (if (keywordp (car __height))
       (send* _height __height)
     (progn
       (if __height (setq _height (car __height)))
       _height)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _height
    (send _height :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _height
       (send _height :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _height
     (send _height :deserialize buf ptr-) (incf ptr- (send _height :serialization-length))
   ;;
   self)
  )

(defclass waypoint_navigator::GoToHeightResponse
  :super ros::object
  :slots ())

(defmethod waypoint_navigator::GoToHeightResponse
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

(defclass waypoint_navigator::GoToHeight
  :super ros::object
  :slots ())

(setf (get waypoint_navigator::GoToHeight :md5sum-) "1408bf479b7f0dca197fee4d8d8ed1d0")
(setf (get waypoint_navigator::GoToHeight :datatype-) "waypoint_navigator/GoToHeight")
(setf (get waypoint_navigator::GoToHeight :request) waypoint_navigator::GoToHeightRequest)
(setf (get waypoint_navigator::GoToHeight :response) waypoint_navigator::GoToHeightResponse)

(defmethod waypoint_navigator::GoToHeightRequest
  (:response () (instance waypoint_navigator::GoToHeightResponse :init)))

(setf (get waypoint_navigator::GoToHeightRequest :md5sum-) "1408bf479b7f0dca197fee4d8d8ed1d0")
(setf (get waypoint_navigator::GoToHeightRequest :datatype-) "waypoint_navigator/GoToHeightRequest")
(setf (get waypoint_navigator::GoToHeightRequest :definition-)
      "
std_msgs/Float64 height

================================================================================
MSG: std_msgs/Float64
---
")

(setf (get waypoint_navigator::GoToHeightResponse :md5sum-) "1408bf479b7f0dca197fee4d8d8ed1d0")
(setf (get waypoint_navigator::GoToHeightResponse :datatype-) "waypoint_navigator/GoToHeightResponse")
(setf (get waypoint_navigator::GoToHeightResponse :definition-)
      "
std_msgs/Float64 height

================================================================================
MSG: std_msgs/Float64
---
")



(provide :waypoint_navigator/GoToHeight "1408bf479b7f0dca197fee4d8d8ed1d0")


