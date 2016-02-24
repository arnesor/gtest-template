# Function   : prepend 
# Description: The intended use is to prepend a list of files with a directory prefix.
#              This will be used in the regression test where the absolute path of the
#              test source files are needed.
# Arguments  : absPathVar: The variable to store the list of absolute paths in.
#              dirPrefix : Directory prefix. Usuallly ${CMAKE_CURRENT_SOURCE_DIR}
#              ARGV2     : List of source files
#
# EXAMPLE USAGE: prepend(SOURCES_WITH_ABS_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${LIBATEST_SOURCES})

function(prepend absPathVar dirPrefix)
   set(listVar "")
   foreach(f ${ARGN})
      list(APPEND listVar "${dirPrefix}/${f}")
   endforeach(f)
   set(${absPathVar} "${listVar}" PARENT_SCOPE)
endfunction(prepend)
