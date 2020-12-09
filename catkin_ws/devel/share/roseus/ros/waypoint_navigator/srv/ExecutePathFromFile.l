;; Auto-generated. Do not edit!


(when (boundp 'waypoint_navigator::ExecutePathFromFile)
  (if (not (find-package "WAYPOINT_NAVIGATOR"))
    (make-package "WAYPOINT_NAVIGATOR"))
  (shadow 'ExecutePathFromFile (find-package "WAYPOINT_NAVIGATOR")))
(unless (find-package "WAYPOINT_NAVIGATOR::EXECUTEPATHFROMFILE")
  (make-package "WAYPOINT_NAVIGATOR::EXECUTEPATHFROMFILE"))
(unless (find-package "WAYPOINT_NAVIGATOR::EXECUTEPATHFROMFILEREQUEST")
  (make-package "WAYPOINT_NAVIGATOR::EXECUTEPATHFROMFILEREQUEST"))
(unless (find-package "WAYPOINT_NAVIGATOR::EXECUTEPATHFROMFILERESPONSE")
  (make-package "WAYPOINT_NAVIGATOR::EXECUTEPATHFROMFILERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass waypoint_navigator::ExecutePathFromFileRequest
  :super ros::object
  :slots (_filename ))

(defmethod waypoint_navigator::ExecutePathFromFileRequest
  (:init
   (&key
    ((:filename __filename) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _filename __filename)
   self)
  (:filename
   (&rest __filename)
   (if (keywordp (car __filename))
       (send* _filename __filename)
     (progn
       (if __filename (setq _filename (car __filename)))
       _filename)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _filename
    (send _filename :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _filename
       (send _filename :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _filename
     (send _filename :deserialize buf ptr-) (incf ptr- (send _filename :serialization-length))
   ;;
   self)
  )

(defclass waypoint_navigator::ExecutePathFromFileResponse
  :super ros::object
  :slots ())

(defmethod waypoint_navigator::ExecutePathFromFileResponse
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

(defclass waypoint_navigator::ExecutePathFromFile
  :super ros::object
  :slots ())

(setf (get waypoint_navigator::ExecutePathFromFile :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get waypoint_navigator::ExecutePathFromFile :datatype-) "waypoint_navigator/ExecutePathFromFile")
(setf (get waypoint_navigator::ExecutePathFromFile :request) waypoint_navigator::ExecutePathFromFileRequest)
(setf (get waypoint_navigator::ExecutePathFromFile :response) waypoint_navigator::ExecutePathFromFileResponse)

(defmethod waypoint_navigator::ExecutePathFromFileRequest
  (:response () (instance waypoint_navigator::ExecutePathFromFileResponse :init)))

(setf (get waypoint_navigator::ExecutePathFromFileRequest :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get waypoint_navigator::ExecutePathFromFileRequest :datatype-) "waypoint_navigator/ExecutePathFromFileRequest")
(setf (get waypoint_navigator::ExecutePathFromFileRequest :definition-)
      "
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")

(setf (get waypoint_navigator::ExecutePathFromFileResponse :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get waypoint_navigator::ExecutePathFromFileResponse :datatype-) "waypoint_navigator/ExecutePathFromFileResponse")
(setf (get waypoint_navigator::ExecutePathFromFileResponse :definition-)
      "
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")



(provide :waypoint_navigator/ExecutePathFromFile "716e25f9d9dc76ceba197f93cbf05dc7")


