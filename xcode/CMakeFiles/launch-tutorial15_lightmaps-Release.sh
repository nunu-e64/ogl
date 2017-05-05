#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial15_lightmaps/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial15_lightmaps 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial15_lightmaps"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial15_lightmaps"  
fi
