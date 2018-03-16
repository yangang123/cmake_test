message("enter module1 directory")

add_library (module1 module1.c)

#PUBLIC是属性, CMAKE_CURRENT_SOURCE_DIR是当前目录
target_include_directories (module1 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})