#!/bin/bash
# ========================
# install Xcode snippet script
# 2014/12/2 by IPa
# ========================


files=$PWD/*
for f in $files
do
	filename=${f##*/}
	if [ "$filename" = "install.sh" ];then
		continue
	fi
    currentPath=$PWD
    cd ~/Library
    targetFile="${PWD}/Developer/Xcode/UserData/CodeSnippets/"
    echo "copy $filename $targetFile"
    cd $currentPath
    if [[ -f $targetFile ]]; then
        rm $targetFile
    fi
    cp "$filename" "$targetFile"
done
