find_library(OPENVX openvx PATHS /root/openvx/OpenVX-sample-impl/install/Linux/x64/Release/bin) 
message("OpenVX found: ${OPENVX}")
find_library(VXU vxu PATHS /root/openvx/OpenVX-sample-impl/install/Linux/x64/Release/bin)
message("VXU found: ${VXU}")
find_package(VXA QUIET)
if(NOT ${VXA_FOUND})
  message(FATAL_ERROR "The required VXA library is not found, please download it from https://github.com/relrotciv/vxa.")
endif()


add_executable(t1 t1.c)
target_link_libraries(t1 ${VXU} ${OPENVX})
