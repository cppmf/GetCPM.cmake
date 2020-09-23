# Set the cpm.cmake version to use
# Check for the latest version at : https://github.com/TheLartians/CPM.cmake/releases
set(CPM_DOWNLOAD_VERSION 0.27.3)

# Define where to store the downloaded version of cpm.cmake
# You can define where to store by source packages by defining CPM_SOURCE_CACHE
# If not, it will be stored in the default location
if(CPM_SOURCE_CACHE)
  set(CPM_DOWNLOAD_LOCATION "${CPM_SOURCE_CACHE}/cpm/CPM_${CPM_DOWNLOAD_VERSION}.cmake")
elseif(DEFINED ENV{CPM_SOURCE_CACHE})
  set(CPM_DOWNLOAD_LOCATION "$ENV{CPM_SOURCE_CACHE}/cpm/CPM_${CPM_DOWNLOAD_VERSION}.cmake")
else()
  set(CPM_DOWNLOAD_LOCATION "${CMAKE_BINARY_DIR}/cmake/CPM_${CPM_DOWNLOAD_VERSION}.cmake")
endif()

# If cpm.cmake is not found in the cache location, it is then downloaded from github release
if(NOT (EXISTS ${CPM_DOWNLOAD_LOCATION}))
  message(STATUS "Downloading CPM.cmake to ${CPM_DOWNLOAD_LOCATION}")
  file(DOWNLOAD
       https://github.com/TheLartians/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake
       ${CPM_DOWNLOAD_LOCATION}
  )
endif()

# It is finally be added to CMake module search path
include(${CPM_DOWNLOAD_LOCATION})