cmake_minimum_required(VERSION 3.6)

project(MY_APP)

#file(GLOB_RECURSE MY_SOURCES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c")

find_library(SDL2 SDL2)

add_library(main SHARED)

target_sources(main PRIVATE main.c)

# add_subdirectory(include)

target_link_libraries(main
        SDL2
        log
)
