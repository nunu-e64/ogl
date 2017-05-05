#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/tutorial12_extensions/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/RelWithDebInfo/tutorial12_extensions 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/RelWithDebInfo/tutorial12_extensions"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/RelWithDebInfo/tutorial12_extensions"  
fi
