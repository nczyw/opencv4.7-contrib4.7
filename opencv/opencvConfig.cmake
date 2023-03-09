cmake_minimum_required(VERSION 3.5)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#记录opencv版本
set(OpenCV_VERSION 4.7.0)
set(OpenCV_VERSION_MAJOR  4)
set(OpenCV_VERSION_MINOR  7)
set(OpenCV_VERSION_PATCH  0)
set(OpenCV_VERSION_TWEAK  0)
set(OpenCV_VERSION_STATUS "")

#配置环境变量
include_directories(${CMAKE_CURRENT_LIST_DIR}/include)
include_directories(${CMAKE_CURRENT_LIST_DIR}/include/opencv2)

#查找mingw lib库
file(GLOB opencvliblist ${CMAKE_CURRENT_LIST_DIR}/lib/*.a)

#顶层cmake中使用下面的方法加载opencv库

#加载opencv cmake
#include(${CMAKE_CURRENT_LIST_DIR}/opencv/opencvConfig.cmake)
#链接lib库
#target_link_libraries(${YourProjectName} ${opencvliblist})


#message(${opencvliblist})
#查找mingw 应用程序所使用的dll文件
file(GLOB opencvdlllist ${CMAKE_CURRENT_LIST_DIR}/bin/*.dll)
#FOREACH(FILE_PATH ${opencvdlllist})
    #MESSAGE(${FILE_PATH})
#    STRING(REGEX REPLACE ".+/(.+)" "\\1" FILE_NAME ${FILE_PATH})
#    MESSAGE(${FILE_NAME})
#    install(FILES ${CMAKE_CURRENT_LIST_DIR}/bin/${FILE_NAME} DESTINATION ${CMAKE_BINARY_DIR})
#ENDFOREACH(FILE_PATH)

#调用install时，把opencv运行库复制到编译目录
install(FILES ${opencvdlllist} DESTINATION ${CMAKE_BINARY_DIR})
