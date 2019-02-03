#!/bin/sh
find . -name '*~' | xargs rm -fr
find . -name '*.o' | xargs rm -fr
find . -name '*.a' | xargs rm -fr
find . -name '*.so' | xargs rm -fr
rm -f sign/sign mine/mine */test */test2 lib* */?



