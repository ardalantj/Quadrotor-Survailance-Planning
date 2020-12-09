;; Auto-generated. Do not edit!


(when (boundp 'mav_disturbance_observer::ObserverState)
  (if (not (find-package "MAV_DISTURBANCE_OBSERVER"))
    (make-package "MAV_DISTURBANCE_OBSERVER"))
  (shadow 'ObserverState (find-package "MAV_DISTURBANCE_OBSERVER")))
(unless (find-package "MAV_DISTURBANCE_OBSERVER::OBSERVERSTATE")
  (make-package "MAV_DISTURBANCE_OBSERVER::OBSERVERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ObserverState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_disturbance_observer::ObserverState
  :super ros::object
  :slots (_header _position _velocity _attitude _angular_velocity _external_forces _external_moments _forces_offset _moments_offset ))

(defmethod mav_disturbance_observer::ObserverState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:attitude __attitude) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:angular_velocity __angular_velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:external_forces __external_forces) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:external_moments __external_moments) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:forces_offset __forces_offset) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:moments_offset __moments_offset) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _attitude __attitude)
   (setq _angular_velocity __angular_velocity)
   (setq _external_forces __external_forces)
   (setq _external_moments __external_moments)
   (setq _forces_offset __forces_offset)
   (setq _moments_offset __moments_offset)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:attitude
   (&optional __attitude)
   (if __attitude (setq _attitude __attitude)) _attitude)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:external_forces
   (&optional __external_forces)
   (if __external_forces (setq _external_forces __external_forces)) _external_forces)
  (:external_moments
   (&optional __external_moments)
   (if __external_moments (setq _external_moments __external_moments)) _external_moments)
  (:forces_offset
   (&optional __forces_offset)
   (if __forces_offset (setq _forces_offset __forces_offset)) _forces_offset)
  (:moments_offset
   (&optional __moments_offset)
   (if __moments_offset (setq _moments_offset __moments_offset)) _moments_offset)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[3] _position
    (* 8    3)
    ;; float64[3] _velocity
    (* 8    3)
    ;; float64[3] _attitude
    (* 8    3)
    ;; float64[3] _angular_velocity
    (* 8    3)
    ;; float64[3] _external_forces
    (* 8    3)
    ;; float64[3] _external_moments
    (* 8    3)
    ;; float64[3] _forces_offset
    (* 8    3)
    ;; float64[3] _moments_offset
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _attitude
     (dotimes (i 3)
       (sys::poke (elt _attitude i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _angular_velocity
     (dotimes (i 3)
       (sys::poke (elt _angular_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _external_forces
     (dotimes (i 3)
       (sys::poke (elt _external_forces i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _external_moments
     (dotimes (i 3)
       (sys::poke (elt _external_moments i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _forces_offset
     (dotimes (i 3)
       (sys::poke (elt _forces_offset i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _moments_offset
     (dotimes (i 3)
       (sys::poke (elt _moments_offset i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _attitude
   (dotimes (i (length _attitude))
     (setf (elt _attitude i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _angular_velocity
   (dotimes (i (length _angular_velocity))
     (setf (elt _angular_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _external_forces
   (dotimes (i (length _external_forces))
     (setf (elt _external_forces i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _external_moments
   (dotimes (i (length _external_moments))
     (setf (elt _external_moments i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _forces_offset
   (dotimes (i (length _forces_offset))
     (setf (elt _forces_offset i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _moments_offset
   (dotimes (i (length _moments_offset))
     (setf (elt _moments_offset i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get mav_disturbance_observer::ObserverState :md5sum-) "9ea414391f3791b95995d410be8fb3ab")
(setf (get mav_disturbance_observer::ObserverState :datatype-) "mav_disturbance_observer/ObserverState")
(setf (get mav_disturbance_observer::ObserverState :definition-)
      "Header header
float64[3] position
float64[3] velocity
float64[3] attitude
float64[3] angular_velocity
float64[3] external_forces
float64[3] external_moments
float64[3] forces_offset
float64[3] moments_offset
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :mav_disturbance_observer/ObserverState "9ea414391f3791b95995d410be8fb3ab")


