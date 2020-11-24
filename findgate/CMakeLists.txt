cmake_minimum_required(VERSION 3.5)
project(findgate)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(rclcpp REQUIRED)

add_executable(server src/gateserv.cpp)

ament_target_dependencies(server  "rclcpp")


if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()


set(interface
  "src/interfaces/interface.srv")

rosidl_generate_interfaces(${PROJECT_NAME}
  ${interfaces}
)


install(TARGETS server
  DESTINATION lib/${PROJECT_NAME})

rosidl_target_interfaces( ${PROJECT_NAME}
 "interface")

ament_package()
