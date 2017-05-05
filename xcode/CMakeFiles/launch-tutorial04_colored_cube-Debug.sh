#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial04_colored_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/Debug/tutorial04_colored_cube 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/Debug/tutorial04_colored_cube"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/Debug/tutorial04_colored_cube"  
fi
