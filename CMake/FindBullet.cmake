
SET(BULLET_SEARCH_PATHS
	${POLYCODE_RELEASE_DIR}/Framework/Core/Dependencies/lib
	${POLYCODE_RELEASE_DIR}/Framework/Modules/Dependencies/lib
	${POLYCODE_RELEASE_DIR}/Framework/Modules/Dependencies/include/bullet
	${POLYCODE_RELEASE_DIR}/Framework/Tools/Dependencies/lib
)

# - Try to find Bullet
# Once done this will define
#
#  BULLET_FOUND - system has bullet
#  BULLET_INCLUDE_DIR - the bullet include directory
#  BULLET_LIBRARIES - Link these to use Collada DOM
#

  SET(BULLETDYNAMICS "BulletDynamics")
  SET(BULLETCOLLISION "BulletCollision")
  SET(BULLETMATH "LinearMath")
  SET(BULLETSOFTBODY "BulletSoftBody")
  SET(BULLETMULTITHREADED "BulletMultiThreaded")

  SET(BULLETDYNAMICS_DEBUG "BulletDynamics_d")
  SET(BULLETCOLLISION_DEBUG "BulletCollision_d")
  SET(BULLETMATH_DEBUG "LinearMath_d")
  SET(BULLETSOFTBODY_DEBUG "BulletSoftBody_d")
  SET(BULLETMULTITHREADED_DEBUG "BulletMultiThreaded_d")


FIND_PATH(BULLET_INCLUDE_DIR NAMES btBulletCollisionCommon.h
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	PATHS ${BULLET_SEARCH_PATHS}
)

FIND_LIBRARY(LIBBULLETDYNAMICS
  NAMES 
  ${BULLETDYNAMICS}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETDYNAMICS)
    MESSAGE ("WARNING: Could not find Bullet Dynamics - depending targets will be disabled.")
ENDIF(NOT LIBBULLETDYNAMICS)


FIND_LIBRARY(LIBBULLETCOLLISION
  NAMES 
  ${BULLETCOLLISION}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETCOLLISION)
    MESSAGE ("WARNING: Could not find Bullet Collision - depending targets will be disabled.")
ENDIF(NOT LIBBULLETCOLLISION)

FIND_LIBRARY(LIBBULLETMATH
  NAMES 
  ${BULLETMATH}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETMATH)
    MESSAGE ("WARNING: Could not find Bullet Math - depending targets will be disabled.")
ENDIF(NOT LIBBULLETMATH)

FIND_LIBRARY(LIBBULLETSOFTBODY
  NAMES 
  ${BULLETSOFTBODY}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETSOFTBODY)
    MESSAGE ("WARNING: Could not find Bullet SoftBody - depending targets will be disabled.")
ENDIF(NOT LIBBULLETSOFTBODY)


FIND_LIBRARY(LIBBULLETMULTITHREADED
  NAMES 
  ${BULLETMULTITHREADED}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETMULTITHREADED)
    MESSAGE ("WARNING: Could not find Bullet MultiThreaded - depending targets will be disabled.")
ENDIF(NOT LIBBULLETMULTITHREADED)

# -------

FIND_LIBRARY(LIBBULLETDYNAMICS_DEBUG
  NAMES 
  ${BULLETDYNAMICS_DEBUG}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETDYNAMICS_DEBUG)
    MESSAGE ("WARNING: Could not find Bullet Dynamics Debug - depending targets will be disabled.")
ENDIF(NOT LIBBULLETDYNAMICS_DEBUG)


FIND_LIBRARY(LIBBULLETCOLLISION_DEBUG
  NAMES 
  ${BULLETCOLLISION_DEBUG}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETCOLLISION_DEBUG)
    MESSAGE ("WARNING: Could not find Bullet Collision Debug - depending targets will be disabled.")
ENDIF(NOT LIBBULLETCOLLISION_DEBUG)

FIND_LIBRARY(LIBBULLETMATH_DEBUG
  NAMES 
  ${BULLETMATH_DEBUG}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETMATH_DEBUG)
    MESSAGE ("WARNING: Could not find Bullet Math Debug - depending targets will be disabled.")
ENDIF(NOT LIBBULLETMATH_DEBUG)

FIND_LIBRARY(LIBBULLETSOFTBODY_DEBUG
  NAMES 
  ${BULLETSOFTBODY_DEBUG}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETSOFTBODY_DEBUG)
    MESSAGE ("WARNING: Could not find Bullet SoftBody Debug - depending targets will be disabled.")
ENDIF(NOT LIBBULLETSOFTBODY_DEBUG)


FIND_LIBRARY(LIBBULLETMULTITHREADED_DEBUG
  NAMES 
  ${BULLETMULTITHREADED_DEBUG}
	HINTS
	NO_DEFAULT_PATH
	NO_CMAKE_ENVIRONMENT_PATH
	NO_CMAKE_SYSTEM_PATH
	NO_SYSTEM_ENVIRONMENT_PATH
	NO_CMAKE_PATH
	CMAKE_FIND_FRAMEWORK NEVER
	$ENV{BULLETDIR}
	$ENV{BULLET_PATH}
	PATH_SUFFIXES lib lib64 win32/Dynamic_Release "Win32/${MSVC_YEAR_NAME}/x64/Release" "Win32/${MSVC_YEAR_NAME}/Win32/Release"
	PATHS ${BULLET_SEARCH_PATHS}
)

IF(NOT LIBBULLETMULTITHREADED_DEBUG)
    MESSAGE ("WARNING: Could not find Bullet MultiThreaded Debug - depending targets will be disabled.")
ENDIF(NOT LIBBULLETMULTITHREADED_DEBUG)


SET(BULLET_LIBRARIES ${LIBBULLETMULTITHREADED} ${LIBBULLETSOFTBODY} ${LIBBULLETDYNAMICS} ${LIBBULLETCOLLISION} ${LIBBULLETMATH})

SET(BULLET_LIBRARIES_DEBUG ${LIBBULLETMULTITHREADED_DEBUG} ${LIBBULLETSOFTBODY_DEBUG} ${LIBBULLETDYNAMICS_DEBUG} ${LIBBULLETCOLLISION_DEBUG} ${LIBBULLETMATH_DEBUG})

IF(BULLET_INCLUDE_DIR AND BULLET_LIBRARIES)
	SET(BULLET_FOUND TRUE)
ELSEIF(BULLET_INCLUDE_DIR AND BULLET_LIBRARIES_DEBUG)
	MESSAGE("FOUND DEBUG BULLET LIBRARIES. CONTINUING ALONG HAPPILY DESPITE WARNINGS")
	SET(BULLET_FOUND TRUE)
ENDIF(BULLET_INCLUDE_DIR AND BULLET_LIBRARIES)

# show the BULLET_INCLUDE_DIR and BULLET_LIBRARIES variables only in the advanced view
IF(BULLET_FOUND)
  MESSAGE ("Bullet found (${BULLET_INCLUDE_DIR}) (${BULLET_LIBRARIES}) (${BULLET_LIBRARIES_DEBUG})")
  MARK_AS_ADVANCED(BULLET_INCLUDE_DIR BULLET_LIBRARIES BULLET_LIBRARIES_DEBUG)
ENDIF(BULLET_FOUND)

