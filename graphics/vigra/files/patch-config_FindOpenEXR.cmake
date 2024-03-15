--- config/FindOpenEXR.cmake.orig	2018-10-19 16:12:20 UTC
+++ config/FindOpenEXR.cmake
@@ -27,7 +27,7 @@ FIND_PATH(OPENEXR_INCLUDE_DIR ImfRgbaFile.h PATH_SUFFI
 
 FOREACH(V "" -2_2 -2_1 -2_0 -1_7)
     if(NOT OPENEXR_ILMIMF_LIBRARY)
-        FIND_LIBRARY(OPENEXR_ILMIMF_LIBRARY NAMES IlmImf${V})
+   	FIND_LIBRARY(OPENEXR_ILMIMF_LIBRARY NAMES OpenEXR${V})
         if(OPENEXR_ILMIMF_LIBRARY)
             set(OPENEXR_VERSION ${V})
         endif()
@@ -37,7 +37,7 @@ ENDFOREACH(V)
 FIND_LIBRARY(OPENEXR_IMATH_LIBRARY NAMES Imath${OPENEXR_VERSION})
 FIND_LIBRARY(OPENEXR_IEX_LIBRARY NAMES Iex${OPENEXR_VERSION})
 FIND_LIBRARY(OPENEXR_ILMTHREAD_LIBRARY NAMES IlmThread${OPENEXR_VERSION})
-FIND_LIBRARY(OPENEXR_HALF_LIBRARY NAMES Half)
+FIND_LIBRARY(OPENEXR_HALF_LIBRARY NAMES Imath)
 
 INCLUDE(FindPackageHandleStandardArgs)
 FIND_PACKAGE_HANDLE_STANDARD_ARGS(OpenEXR DEFAULT_MSG