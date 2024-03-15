--- cmake/FindGRASS.cmake.orig	2023-12-22 12:04:30 UTC
+++ cmake/FindGRASS.cmake
@@ -158,19 +158,17 @@ IF (UNIX)
 ENDIF (WIN32)
 
 IF (UNIX)
-  IF (GRASS_FIND_VERSION EQUAL 7)
-    IF (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
-        FOREACH (VERSION_MINOR 9 8 7 6 5 4 3 2 1 0)
-            LIST (APPEND GRASS_PATHS /usr/local/grass${GRASS_FIND_VERSION}${VERSION_MINOR})
-        ENDFOREACH(VERSION_MINOR)
-    ELSE (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
-        FOREACH (PATH /usr/lib64 /usr/lib)
-            FOREACH (VERSION grass76, grass74, grass72, grass70)
-                LIST(APPEND GRASS_PATHS "${PATH}/${VERSION}")
-            ENDFOREACH (VERSION)
-        ENDFOREACH (PATH)
-    ENDIF (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
-   ENDIF (GRASS_FIND_VERSION EQUAL 7)
+  IF (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
+      FOREACH (VERSION_MINOR 9 8 7 6 5 4 3 2 1 0)
+          LIST (APPEND GRASS_PATHS %%LOCALBASE%%/grass${GRASS_FIND_VERSION}${VERSION_MINOR})
+      ENDFOREACH(VERSION_MINOR)
+  ELSE (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
+      FOREACH (VERSION_MINOR 9 8 7 6 5 4 3 2 1 0)
+          FOREACH (PATH /usr/lib64 /usr/lib)
+              LIST(APPEND GRASS_PATHS "${PATH}/grass${GRASS_FIND_VERSION}${VERSION_MINOR}")
+          ENDFOREACH (PATH)
+      ENDFOREACH (VERSION_MINOR)
+  ENDIF (CMAKE_SYSTEM_NAME STREQUAL "FreeBSD")
 ENDIF (UNIX)
 
 IF (APPLE)