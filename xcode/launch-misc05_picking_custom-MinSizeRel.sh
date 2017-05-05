#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/MinSizeRel/misc05_picking_custom 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/MinSizeRel/misc05_picking_custom"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/MinSizeRel/misc05_picking_custom"  
fi
