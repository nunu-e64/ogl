#!/bin/sh
bindir=$(pwd)
cd /Users/fumiya.amano/Documents/works/ogl/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/fumiya.amano/Documents/works/ogl/xcode/Release/misc05_picking_BulletPhysics 
	else
		"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/misc05_picking_BulletPhysics"  
	fi
else
	"/Users/fumiya.amano/Documents/works/ogl/xcode/Release/misc05_picking_BulletPhysics"  
fi
