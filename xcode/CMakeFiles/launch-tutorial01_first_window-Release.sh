#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial01_first_window/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial01_first_window 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial01_first_window"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/tutorial01_first_window"  
fi
