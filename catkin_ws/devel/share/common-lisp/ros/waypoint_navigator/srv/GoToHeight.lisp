; Auto-generated. Do not edit!


(cl:in-package waypoint_navigator-srv)


;//! \htmlinclude GoToHeight-request.msg.html

(cl:defclass <GoToHeight-request> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass GoToHeight-request (<GoToHeight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToHeight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToHeight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToHeight-request> is deprecated: use waypoint_navigator-srv:GoToHeight-request instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <GoToHeight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoint_navigator-srv:height-val is deprecated.  Use waypoint_navigator-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToHeight-request>) ostream)
  "Serializes a message object of type '<GoToHeight-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToHeight-request>) istream)
  "Deserializes a message object of type '<GoToHeight-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToHeight-request>)))
  "Returns string type for a service object of type '<GoToHeight-request>"
  "waypoint_navigator/GoToHeightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToHeight-request)))
  "Returns string type for a service object of type 'GoToHeight-request"
  "waypoint_navigator/GoToHeightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToHeight-request>)))
  "Returns md5sum for a message object of type '<GoToHeight-request>"
  "1408bf479b7f0dca197fee4d8d8ed1d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToHeight-request)))
  "Returns md5sum for a message object of type 'GoToHeight-request"
  "1408bf479b7f0dca197fee4d8d8ed1d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToHeight-request>)))
  "Returns full string definition for message of type '<GoToHeight-request>"
  (cl:format cl:nil "~%std_msgs/Float64 height~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToHeight-request)))
  "Returns full string definition for message of type 'GoToHeight-request"
  (cl:format cl:nil "~%std_msgs/Float64 height~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToHeight-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToHeight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToHeight-request
    (cl:cons ':height (height msg))
))
;//! \htmlinclude GoToHeight-response.msg.html

(cl:defclass <GoToHeight-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoToHeight-response (<GoToHeight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToHeight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToHeight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<GoToHeight-response> is deprecated: use waypoint_navigator-srv:GoToHeight-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToHeight-response>) ostream)
  "Serializes a message object of type '<GoToHeight-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToHeight-response>) istream)
  "Deserializes a message object of type '<GoToHeight-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToHeight-response>)))
  "Returns string type for a service object of type '<GoToHeight-response>"
  "waypoint_navigator/GoToHeightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToHeight-response)))
  "Returns string type for a service object of type 'GoToHeight-response"
  "waypoint_navigator/GoToHeightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToHeight-response>)))
  "Returns md5sum for a message object of type '<GoToHeight-response>"
  "1408bf479b7f0dca197fee4d8d8ed1d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToHeight-response)))
  "Returns md5sum for a message object of type 'GoToHeight-response"
  "1408bf479b7f0dca197fee4d8d8ed1d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToHeight-response>)))
  "Returns full string definition for message of type '<GoToHeight-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToHeight-response)))
  "Returns full string definition for message of type 'GoToHeight-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToHeight-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToHeight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToHeight-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToHeight)))
  'GoToHeight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToHeight)))
  'GoToHeight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToHeight)))
  "Returns string type for a service object of type '<GoToHeight>"
  "waypoint_navigator/GoToHeight")