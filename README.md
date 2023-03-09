# opencv4.7-contrib4.7
## Qt 6.4 ,mingw编译的opencv4.7加contrib4.7 
* 由于Qt官方已经放弃了qmake,文件中使用方法已经改为cmake
* 在顶层cmake 加载当前cmake，按照opencv cmake中的方法在顶层中添加库后，就能使用了.方法如下
```
#顶层cmake中使用下面的方法加载opencv库

#加载opencv cmake
include(${CMAKE_CURRENT_LIST_DIR}/opencv/opencvConfig.cmake)
#链接lib库
target_link_libraries(${YourProjectName} ${opencvliblist})
```
