#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fabm" for configuration "MinSizeRel"
set_property(TARGET fabm APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(fabm PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "Fortran"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/fabm.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS fabm )
list(APPEND _IMPORT_CHECK_FILES_FOR_fabm "${_IMPORT_PREFIX}/lib/fabm.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
