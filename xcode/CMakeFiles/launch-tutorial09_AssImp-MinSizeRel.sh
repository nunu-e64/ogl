#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial09_vbo_indexing/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/MinSizeRel/tutorial09_AssImp 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/MinSizeRel/tutorial09_AssImp"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/MinSizeRel/tutorial09_AssImp"  
fi
