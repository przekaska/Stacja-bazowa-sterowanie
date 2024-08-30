# Install script for directory: C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "MinSizeRel")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/ncs/toolchains/ce3b5ff664/opt/zephyr-sdk/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/lib/ext/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/lib/fih/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/tools/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/secure_fw/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/interface/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/platform/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/platform/ext/accelerator/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY MESSAGE_NEVER FILES "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/bin/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/lib/s_veneers.o")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/lib" TYPE FILE MESSAGE_NEVER FILES "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/secure_fw/s_veneers.o")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/client.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/error.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_NEVER FILES
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/client.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/error.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa_manifest/sid.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa_manifest" TYPE FILE MESSAGE_NEVER FILES "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/generated/interface/include/psa_manifest/sid.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/config_impl.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/generated/interface/include/config_impl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/tfm_veneers.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/tfm_ns_interface.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_veneers.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_ns_interface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/tfm_ns_client_ext.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_ns_client_ext.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/config_tfm.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/secure_fw/include/config_tfm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/config_base.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/config/config_base.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/tfm_psa_call_pack.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_psa_call_pack.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/framework_feature.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_NEVER FILES "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/generated/interface/include/psa/framework_feature.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_extra.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_compat.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_client_struct.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_platform.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_sizes.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_struct.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_types.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa/crypto_values.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/psa" TYPE FILE MESSAGE_NEVER FILES
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_extra.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_compat.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_client_struct.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_platform.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_sizes.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_struct.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_types.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/psa/crypto_values.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/tfm_crypto_defs.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_crypto_defs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/tfm_platform_api.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/tfm_platform_api.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src/tfm_tz_psa_ns_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_tz_psa_ns_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include/os_wrapper")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/include" TYPE DIRECTORY MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/include/os_wrapper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src/os_wrapper")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src" TYPE DIRECTORY MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/src/os_wrapper")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src/tfm_crypto_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_crypto_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src/tfm_platform_api.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/interface/src" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/interface/src/tfm_platform_api.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/config/cp_check.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/config" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/config/cp_check.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  MESSAGE("----- Installing platform NS -----")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform/ext/cmsis")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform/ext" TYPE DIRECTORY MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/platform/ext/cmsis")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform/include")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform" TYPE DIRECTORY MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/platform/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/CMakeLists.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns" TYPE FILE MESSAGE_NEVER RENAME "CMakeLists.txt" FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/cmake/spe-CMakeLists.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/toolchain_ns_GNUARM.cmake;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/toolchain_ns_ARMCLANG.cmake;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/toolchain_ns_IARARM.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake" TYPE FILE MESSAGE_NEVER FILES
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/platform/ns/toolchain_ns_GNUARM.cmake"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/platform/ns/toolchain_ns_ARMCLANG.cmake"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/platform/ns/toolchain_ns_IARARM.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform/include/fih.h;C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform/include/tfm_plat_ns.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/platform/include" TYPE FILE MESSAGE_NEVER FILES
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/lib/fih/inc/fih.h"
    "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/platform/include/tfm_plat_ns.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export.cmake"
         "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/CMakeFiles/Export/C_/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake" TYPE FILE MESSAGE_NEVER FILES "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/CMakeFiles/Export/C_/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/spe_export.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake/set_extensions.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/api_ns/cmake" TYPE FILE MESSAGE_NEVER FILES "C:/ncs/v2.6/modules/tee/tf-m/trusted-firmware-m/cmake/set_extensions.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/nordic/WAVE-Stacja-bazowa-sterowanie/DevKit5340/tfm/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
