#
# Copyright 2017 Adam H. Leventhal. All Rights Reserved.
#
 
all: snapUtil

snapUtil: snapUtil.c
	clang -Wall -Os -g -o snapUtil snapUtil.c
	codesign -f -s - --entitlements entitlements.plist snapUtil

clean:
	rm -f snapUtil
