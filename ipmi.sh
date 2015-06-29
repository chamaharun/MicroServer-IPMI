#!/bin/sh

#Set your Browser's Downloads Directory
DownloadedPath=~/Downloads/

cd $DownloadedPath
FileToOpen=`mktemp -t ipmi`

mv ./viewer.jnlp* $FileToOpen
javaws -silent $FileToOpen
rm -f $FileToOpen
