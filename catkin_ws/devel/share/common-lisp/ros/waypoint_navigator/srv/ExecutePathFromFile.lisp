; Auto-generated. Do not edit!


(cl:in-package waypoint_navigator-srv)


;//! \htmlinclude ExecutePathFromFile-request.msg.html

(cl:defclass <ExecutePathFromFile-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ExecutePathFromFile-request (<ExecutePathFromFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePathFromFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePathFromFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<ExecutePathFromFile-request> is deprecated: use waypoint_navigator-srv:ExecutePathFromFile-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ExecutePathFromFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoint_navigator-srv:filename-val is deprecated.  Use waypoint_navigator-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePathFromFile-request>) ostream)
  "Serializes a message object of type '<ExecutePathFromFile-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filename) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePathFromFile-request>) istream)
  "Deserializes a message object of type '<ExecutePathFromFile-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filename) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePathFromFile-request>)))
  "Returns string type for a service object of type '<ExecutePathFromFile-request>"
  "waypoint_navigator/ExecutePathFromFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePathFromFile-request)))
  "Returns string type for a service object of type 'ExecutePathFromFile-request"
  "waypoint_navigator/ExecutePathFromFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePathFromFile-request>)))
  "Returns md5sum for a message object of type '<ExecutePathFromFile-request>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePathFromFile-request)))
  "Returns md5sum for a message object of type 'ExecutePathFromFile-request"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePathFromFile-request>)))
  "Returns full string definition for message of type '<ExecutePathFromFile-request>"
  (cl:format cl:nil "~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePathFromFile-request)))
  "Returns full string definition for message of type 'ExecutePathFromFile-request"
  (cl:format cl:nil "~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePathFromFile-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePathFromFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePathFromFile-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude ExecutePathFromFile-response.msg.html

(cl:defclass <ExecutePathFromFile-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExecutePathFromFile-response (<ExecutePathFromFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePathFromFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePathFromFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoint_navigator-srv:<ExecutePathFromFile-response> is deprecated: use waypoint_navigator-srv:ExecutePathFromFile-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePathFromFile-response>) ostream)
  "Serializes a message object of type '<ExecutePathFromFile-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePathFromFile-response>) istream)
  "Deserializes a message object of type '<ExecutePathFromFile-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePathFromFile-response>)))
  "Returns string type for a service object of type '<ExecutePathFromFile-response>"
  "waypoint_navigator/ExecutePathFromFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePathFromFile-response)))
  "Returns string type for a service object of type 'ExecutePathFromFile-response"
  "waypoint_navigator/ExecutePathFromFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePathFromFile-response>)))
  "Returns md5sum for a message object of type '<ExecutePathFromFile-response>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePathFromFile-response)))
  "Returns md5sum for a message object of type 'ExecutePathFromFile-response"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePathFromFile-response>)))
  "Returns full string definition for message of type '<ExecutePathFromFile-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePathFromFile-response)))
  "Returns full string definition for message of type 'ExecutePathFromFile-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePathFromFile-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePathFromFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePathFromFile-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecutePathFromFile)))
  'ExecutePathFromFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecutePathFromFile)))
  'ExecutePathFromFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePathFromFile)))
  "Returns string type for a service object of type '<ExecutePathFromFile>"
  "waypoint_navigator/ExecutePathFromFile")