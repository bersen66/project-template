add_subdirectory(adder) # libadder

set(
    SOURCES
    main.cpp
)


add_executable(${PROJECT_NAME} ${SOURCES})

# LINKING EXTERNAL LIBRARIES
target_link_libraries(${PROJECT_NAME}
    Boost::program_options
)

# LINKING INTERNAL LIBRARIES
target_link_libraries(${PROJECT_NAME}
    libadder
)


