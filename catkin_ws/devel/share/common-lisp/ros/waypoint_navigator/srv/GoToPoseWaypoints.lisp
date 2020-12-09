; Auto-generated. Do not edit!


(cl:in-package waypoint_navigator-srv)


;//! \htmlinclude GoToPoseWaypoints-request.msg.html

(cl:defclass <GoToPoseWaypoints-request> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (mission_id
    :reader mission_id
    :initarg :mission_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass GoToPoseWaypoints-request (<GoToPoseWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPoseWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPoseWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToPoseWaypoints-request> is deprecated: use waypoint_navigator-srv:GoToPoseWaypoints-request instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GoToPoseWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoint_navigator-srv:waypoints-val is deprecated.  Use waypoint_navigator-srv:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'mission_id-val :lambda-list '(m))
(cl:defmethod mission_id-val ((m <GoToPoseWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoint_navigator-srv:mission_id-val is deprecated.  Use waypoint_navigator-srv:mission_id instead.")
  (mission_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPoseWaypoints-request>) ostream)
  "Serializes a message object of type '<GoToPoseWaypoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mission_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPoseWaypoints-request>) istream)
  "Deserializes a message object of type '<GoToPoseWaypoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mission_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPoseWaypoints-request>)))
  "Returns string type for a service object of type '<GoToPoseWaypoints-request>"
  "waypoint_navigator/GoToPoseWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPoseWaypoints-request)))
  "Returns string type for a service object of type 'GoToPoseWaypoints-request"
  "waypoint_navigator/GoToPoseWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPoseWaypoints-request>)))
  "Returns md5sum for a message object of type '<GoToPoseWaypoints-request>"
  "0b363140d3a9fe53d1402ab7ca233130")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPoseWaypoints-request)))
  "Returns md5sum for a message object of type 'GoToPoseWaypoints-request"
  "0b363140d3a9fe53d1402ab7ca233130")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPoseWaypoints-request>)))
  "Returns full string definition for message of type '<GoToPoseWaypoints-request>"
  (cl:format cl:nil "~%geometry_msgs/Pose[] waypoints~%std_msgs/String mission_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPoseWaypoints-request)))
  "Returns full string definition for message of type 'GoToPoseWaypoints-request"
  (cl:format cl:nil "~%geometry_msgs/Pose[] waypoints~%std_msgs/String mission_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPoseWaypoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mission_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPoseWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPoseWaypoints-request
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':mission_id (mission_id msg))
))
;//! \htmlinclude GoToPoseWaypoints-response.msg.html

(cl:defclass <GoToPoseWaypoints-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoToPoseWaypoints-response (<GoToPoseWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPoseWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPoseWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToPoseWaypoints-response> is deprecated: use waypoint_navigator-srv:GoToPoseWaypoints-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPoseWaypoints-response>) ostream)
  "Serializes a message object of type '<GoToPoseWaypoints-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPoseWaypoints-response>) istream)
  "Deserializes a message object of type '<GoToPoseWaypoints-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPoseWaypoints-response>)))
  "Returns string type for a service object of type '<GoToPoseWaypoints-response>"
  "waypoint_navigator/GoToPoseWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPoseWaypoints-response)))
  "Returns string type for a service object of type 'GoToPoseWaypoints-response"
  "waypoint_navigator/GoToPoseWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPoseWaypoints-response>)))
  "Returns md5sum for a message object of type '<GoToPoseWaypoints-response>"
  "0b363140d3a9fe53d1402ab7ca233130")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPoseWaypoints-response)))
  "Returns md5sum for a message object of type 'GoToPoseWaypoints-response"
  "0b363140d3a9fe53d1402ab7ca233130")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPoseWaypoints-response>)))
  "Returns full string definition for message of type '<GoToPoseWaypoints-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPoseWaypoints-response)))
  "Returns full string definition for message of type 'GoToPoseWaypoints-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPoseWaypoints-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPoseWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPoseWaypoints-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToPoseWaypoints)))
  'GoToPoseWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToPoseWaypoints)))
  'GoToPoseWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPoseWaypoints)))
  "Returns string type for a service object of type '<GoToPoseWaypoints>"
  "waypoint_navigator/GoToPoseWaypoints")