#!/bin/sh
bindir=$(pwd)
cd /home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/tutorial02_red_triangle/
export LD_LIBRARY_PATH=:$LD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/build/tutorial02_red_triangle 
	else
		"/home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/build/tutorial02_red_triangle"  
	fi
else
	"/home/tuto/Dropbox/C++/OpenGL/OpenGL-Tutorial/OpenGL-tutorial_v0014_33/build/tutorial02_red_triangle"  
fi
