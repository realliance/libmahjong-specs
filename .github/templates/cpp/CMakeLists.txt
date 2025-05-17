cmake_minimum_required(VERSION 3.12)
project(libmahjong-capnp VERSION 0.1.0 LANGUAGES CXX)

# Find Cap'n Proto package
find_package(CapnProto REQUIRED)

# Collect all source and header files
file(GLOB SOURCES "*.cpp")
file(GLOB HEADERS "*.h")

# Create library target
add_library(libmahjong-capnp ${SOURCES} ${HEADERS})
target_include_directories(libmahjong-capnp PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

# Link with Cap'n Proto libraries
target_link_libraries(libmahjong-capnp PUBLIC CapnProto::capnp CapnProto::capnp-rpc)

# Set C++14 standard (required for Cap'n Proto)
target_compile_features(libmahjong-capnp PUBLIC cxx_std_14)

# Installation rules
install(TARGETS libmahjong-capnp
    EXPORT libmahjong-capnp-targets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    INCLUDES DESTINATION include
)

install(FILES ${HEADERS} DESTINATION include)

# Export targets
install(EXPORT libmahjong-capnp-targets
    FILE libmahjong-capnp-targets.cmake
    NAMESPACE libmahjong::
    DESTINATION lib/cmake/libmahjong-capnp
)

# Create and install config file
include(CMakePackageConfigHelpers)
configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/libmahjong-capnp-config.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/libmahjong-capnp-config.cmake
    INSTALL_DESTINATION lib/cmake/libmahjong-capnp
)

# Version file
write_basic_package_version_file(
    ${CMAKE_CURRENT_BINARY_DIR}/libmahjong-capnp-config-version.cmake
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY SameMajorVersion
)

install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/libmahjong-capnp-config.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/libmahjong-capnp-config-version.cmake
    DESTINATION lib/cmake/libmahjong-capnp
) 