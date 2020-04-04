#! /bin/sh

TCLVER=8.5.10
TKVER=8.5.10
OTCLVER=1.14
TCLCLVER=1.20
NSVER=2.35
NAMVER=1.15
XGRAPHVER=12.2
ZLIBVER=1.2.3
DEI80211MRVER=1.1.4

echo "============================================================"
echo "* Build ns-$NSVER"
echo "============================================================"

cd ./ns-$NSVER

if  [ "${test_cygwin}" = "true" ]; then
        ./configure --x-libraries=/usr/X11R6/lib --x-includes=/usr/X11R6/include --with-tcl-ver=$TCLVER --with-tk-ver=$TKVER || die "Ns configuration failed! Exiting ...";
else
        ./configure --with-otcl=../otcl-$OTCLVER --with-tclcl=../tclcl-$TCLCLVER --with-tcl-ver=$TCLVER --with-tk-ver=$TKVER || die "Ns configuration failed! Exiting ...";
fi

if make
then
	echo " Ns has been installed successfully." 
else
	echo "Ns make failed!"
	echo "See http://www.isi.edu/nsnam/ns/ns-problems.html for problems"
	exit
fi

cd ../
