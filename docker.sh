#!/bin/bash
if [ "$1" != "" ]; then exec $*; fi
echo ZZ 1 zz
echo hello | sign -s
echo ZZ 5 zz
echo hello | sign -S
echo ZZ 9 zz

