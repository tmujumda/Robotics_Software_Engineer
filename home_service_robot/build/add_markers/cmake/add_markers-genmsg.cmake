# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "add_markers: 0 messages, 1 services")

set(MSG_I_FLAGS "-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(add_markers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" NAME_WE)
add_custom_target(_add_markers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "add_markers" "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(add_markers
  "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_markers
)

### Generating Module File
_generate_module_cpp(add_markers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_markers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(add_markers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(add_markers_generate_messages add_markers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" NAME_WE)
add_dependencies(add_markers_generate_messages_cpp _add_markers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(add_markers_gencpp)
add_dependencies(add_markers_gencpp add_markers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_markers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(add_markers
  "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/add_markers
)

### Generating Module File
_generate_module_eus(add_markers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/add_markers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(add_markers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(add_markers_generate_messages add_markers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" NAME_WE)
add_dependencies(add_markers_generate_messages_eus _add_markers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(add_markers_geneus)
add_dependencies(add_markers_geneus add_markers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_markers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(add_markers
  "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_markers
)

### Generating Module File
_generate_module_lisp(add_markers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_markers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(add_markers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(add_markers_generate_messages add_markers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" NAME_WE)
add_dependencies(add_markers_generate_messages_lisp _add_markers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(add_markers_genlisp)
add_dependencies(add_markers_genlisp add_markers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_markers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(add_markers
  "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/add_markers
)

### Generating Module File
_generate_module_nodejs(add_markers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/add_markers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(add_markers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(add_markers_generate_messages add_markers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" NAME_WE)
add_dependencies(add_markers_generate_messages_nodejs _add_markers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(add_markers_gennodejs)
add_dependencies(add_markers_gennodejs add_markers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_markers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(add_markers
  "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_markers
)

### Generating Module File
_generate_module_py(add_markers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_markers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(add_markers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(add_markers_generate_messages add_markers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robond/Robotics_Software_Engineer/home_service_robot/src/add_markers/srv/marker_service.srv" NAME_WE)
add_dependencies(add_markers_generate_messages_py _add_markers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(add_markers_genpy)
add_dependencies(add_markers_genpy add_markers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_markers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_markers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_markers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(add_markers_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(add_markers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/add_markers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/add_markers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(add_markers_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(add_markers_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_markers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_markers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(add_markers_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(add_markers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/add_markers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/add_markers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(add_markers_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(add_markers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_markers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_markers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_markers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(add_markers_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(add_markers_generate_messages_py std_msgs_generate_messages_py)
endif()
