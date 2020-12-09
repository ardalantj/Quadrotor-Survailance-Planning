; Auto-generated. Do not edit!


(cl:in-package waypoint_navigator-srv)


;//! \htmlinclude GoToWaypoints-request.msg.html

(cl:defclass <GoToWaypoints-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GoToWaypoints-request (<GoToWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToWaypoints-request> is deprecated: use waypoint_navigator-srv:GoToWaypoints-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GoToWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoint_navigator-srv:points-val is deprecated.  Use waypoint_navigator-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToWaypoints-request>) ostream)
  "Serializes a message object of type '<GoToWaypoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToWaypoints-request>) istream)
  "Deserializes a message object of type '<GoToWaypoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToWaypoints-request>)))
  "Returns string type for a service object of type '<GoToWaypoints-request>"
  "waypoint_navigator/GoToWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoints-request)))
  "Returns string type for a service object of type 'GoToWaypoints-request"
  "waypoint_navigator/GoToWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToWaypoints-request>)))
  "Returns md5sum for a message object of type '<GoToWaypoints-request>"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToWaypoints-request)))
  "Returns md5sum for a message object of type 'GoToWaypoints-request"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToWaypoints-request>)))
  "Returns full string definition for message of type '<GoToWaypoints-request>"
  (cl:format cl:nil "~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToWaypoints-request)))
  "Returns full string definition for message of type 'GoToWaypoints-request"
  (cl:format cl:nil "~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToWaypoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToWaypoints-request
    (cl:cons ':points (points msg))
))
;//! \htmlinclude GoToWaypoints-response.msg.html

(cl:defclass <GoToWaypoints-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoToWaypoints-response (<GoToWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToWaypoints-response> is deprecated: use waypoint_navigator-srv:GoToWaypoints-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToWaypoints-response>) ostream)
  "Serializes a message object of type '<GoToWaypoints-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToWaypoints-response>) istream)
  "Deserializes a message object of type '<GoToWaypoints-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToWaypoints-response>)))
  "Returns string type for a service object of type '<GoToWaypoints-response>"
  "waypoint_navigator/GoToWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoints-response)))
  "Returns string type for a service object of type 'GoToWaypoints-response"
  "waypoint_navigator/GoToWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToWaypoints-response>)))
  "Returns md5sum for a message object of type '<GoToWaypoints-response>"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToWaypoints-response)))
  "Returns md5sum for a message object of type 'GoToWaypoints-response"
  "3fb3f9dacc279b964c4c8341122c34df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToWaypoints-response>)))
  "Returns full string definition for message of type '<GoToWaypoints-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToWaypoints-response)))
  "Returns full string definition for message of type 'GoToWaypoints-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToWaypoints-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToWaypoints-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToWaypoints)))
  'GoToWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToWaypoints)))
  'GoToWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoints)))
  "Returns string type for a service object of type '<GoToWaypoints>"
  "waypoint_navigator/GoToWaypoints")