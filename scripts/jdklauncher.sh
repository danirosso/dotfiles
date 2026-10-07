#!/bin/sh
infile=$1

jdk=$HOME/Projects/external/jdk-27/bin/java

export _JAVA_AWT_WM_NONREPARENTING=1

$jdk -jar $infile
