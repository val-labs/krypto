#!/bin/bash
if [ "$1" != "" ]; then exec $*; fi
echo ZZZZ1
echo | sign -s
echo ZZZZ5
echo | sign -S
echo ZZZZ9
