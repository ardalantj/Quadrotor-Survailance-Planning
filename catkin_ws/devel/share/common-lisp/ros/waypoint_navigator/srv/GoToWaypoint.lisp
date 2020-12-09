; Auto-generated. Do not edit!


(cl:in-package waypoint_navigator-srv)


;//! \htmlinclude GoToWaypoint-request.msg.html

(cl:defclass <GoToWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GoToWaypoint-request (<GoToWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToWaypoint-request> is deprecated: use waypoint_navigator-srv:GoToWaypoint-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GoToWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoint_navigator-srv:point-val is deprecated.  Use waypoint_navigator-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToWaypoint-request>) ostream)
  "Serializes a message object of type '<GoToWaypoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToWaypoint-request>) istream)
  "Deserializes a message object of type '<GoToWaypoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToWaypoint-request>)))
  "Returns string type for a service object of type '<GoToWaypoint-request>"
  "waypoint_navigator/GoToWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoint-request)))
  "Returns string type for a service object of type 'GoToWaypoint-request"
  "waypoint_navigator/GoToWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToWaypoint-request>)))
  "Returns md5sum for a message object of type '<GoToWaypoint-request>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToWaypoint-request)))
  "Returns md5sum for a message object of type 'GoToWaypoint-request"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToWaypoint-request>)))
  "Returns full string definition for message of type '<GoToWaypoint-request>"
  (cl:format cl:nil "~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToWaypoint-request)))
  "Returns full string definition for message of type 'GoToWaypoint-request"
  (cl:format cl:nil "~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToWaypoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToWaypoint-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude GoToWaypoint-response.msg.html

(cl:defclass <GoToWaypoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoToWaypoint-response (<GoToWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToWaypoint-response> is deprecated: use waypoint_navigator-srv:GoToWaypoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToWaypoint-response>) ostream)
  "Serializes a message object of type '<GoToWaypoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToWaypoint-response>) istream)
  "Deserializes a message object of type '<GoToWaypoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToWaypoint-response>)))
  "Returns string type for a service object of type '<GoToWaypoint-response>"
  "waypoint_navigator/GoToWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoint-response)))
  "Returns string type for a service object of type 'GoToWaypoint-response"
  "waypoint_navigator/GoToWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToWaypoint-response>)))
  "Returns md5sum for a message object of type '<GoToWaypoint-response>"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToWaypoint-response)))
  "Returns md5sum for a message object of type 'GoToWaypoint-response"
  "a7c84ff13976aa04656e56e300124444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToWaypoint-response>)))
  "Returns full string definition for message of type '<GoToWaypoint-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToWaypoint-response)))
  "Returns full string definition for message of type 'GoToWaypoint-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToWaypoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToWaypoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToWaypoint)))
  'GoToWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToWaypoint)))
  'GoToWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToWaypoint)))
  "Returns string type for a service object of type '<GoToWaypoint>"
  "waypoint_navigator/GoToWaypoint")