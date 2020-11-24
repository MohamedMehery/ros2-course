cmake_minimum_required(VERSION 3.5)
project(findgate)

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rosidl_default_generators REQUIRED)

add_executable(server src/gateserv.cpp)
ament_target_dependencies(server  "rclcpp")



# Install nodes
install(TARGETS server
  DESTINATION lib/${PROJECT_NAME})


set(msg_files
  "src/interfaces/interface.srv"
)
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
