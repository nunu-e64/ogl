#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial11_2d_fonts/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/Debug/tutorial11_2d_fonts 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/Debug/tutorial11_2d_fonts"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/Debug/tutorial11_2d_fonts"  
fi
