#!/bin/sh
bindir=$(pwd)
cd /home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/tutorial15_lightmaps/
export LD_LIBRARY_PATH=:$LD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/build/tutorial15_lightmaps 
	else
		"/home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/build/tutorial15_lightmaps"  
	fi
else
	"/home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/build/tutorial15_lightmaps"  
fi
