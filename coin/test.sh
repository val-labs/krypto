#!/bin/bash -e
function runit () {
    f=$1
    prvit $*
    cat >>$f.raw
    doit $*
}
function prvit () {
    f=$1
    if [ -e $f.bfr ] ; then
	echo prv: `cut -d/ -f-2 <$f.bfr` >>$f.raw
    fi
}
function doit () {
    f=$1
    verbose=2
    sign -S <$f.raw >$f.pfx
    cat $f.pfx $f.raw | mine -b $f >$f.sfx 2>$f.xid
    cat $f.pfx $f.raw  $f.sfx >$f.msg
    if [ "$verbose" != "" ]; then
	echo _ID: `cat $f.xid`
	echo '<<BOF>>'
	cat $f.[prs]??
    fi
    cat $f.[pr]?? | sign -V
    g=`expr $f + 1`
    cp $f.xid $g.bfr
    if [ "$verbose" != "" ]; then
	echo ' <<EOF>>'
    fi
}

runit 0 <<EOF
---
EOF

runit 1 <<EOF
---
one
---
EOF

runit 2 <<EOF
---
two
---
EOF

runit 3 <<EOF
---
three
---
EOF

runit 4 <<EOF
q
w
e
EOF
