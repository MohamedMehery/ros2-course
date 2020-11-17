cmake_minimum_required(VERSION 3.10.2)
project(cmake-tut2 VERSION 1.0.0)

file(GLOB SRC_FILES
        "src/*.cpp"
)

set(INC_FILES_DIR
        hdr/
)

include_directories(
        ${INC_FILES_DIR}    
)

add_executable(cmake-tut2
        ${SRC_FILES}
        main.cpp
)