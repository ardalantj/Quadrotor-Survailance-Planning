## *********************************************************
##
## File autogenerated for the mav_linear_mpc package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'proportional gain of roll angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roll_gain', 'edit_method': '', 'default': 90.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'proportional gain of pitch angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pitch_gain', 'edit_method': '', 'default': 80.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'integral gain of roll angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'roll_int_gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'integral gain of pitch angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'pitch_int_gain', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'derivative gain of roll angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'p_gain', 'edit_method': '', 'default': 30.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'derivative gain of pitch angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'q_gain', 'edit_method': '', 'default': 25.0, 'level': 0, 'min': 0.1, 'type': 'double'}, {'srcline': 290, 'description': 'derivative gain of yaw angle', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'r_gain', 'edit_method': '', 'default': 0.8, 'level': 0, 'min': 0.1, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

