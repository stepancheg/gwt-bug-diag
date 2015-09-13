#!/bin/sh -e

# clear caches, so they don't interfere
rm -rf $TMPDIR/gwt*

#GWT_HOME=$(dirname $0)/lib
: ${GWT_HOME:=$HOME/usr/gwt-2.7.0}

classpath="$GWT_HOME/*:$GWT_HOME/src/*:src"

#exec java -classpath "$classpath" com.google.gwt.dev.codeserver.CodeServer \
exec java -classpath "$classpath" com.google.gwt.dev.DevMode \
    -XjsInteropMode JS \
    -sourceLevel 1.7 \
    -incremental \
    aaaa.Bbbb "$@"
    -help

# vim: set ts=4 sw=4 et:
