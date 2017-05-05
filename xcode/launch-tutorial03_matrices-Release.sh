#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial03_matrices/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial03_matrices 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial03_matrices"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial03_matrices"  
fi
