#!/bin/bash
TARGET_DIRECTORY="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes/"
TARGET_FILES=`find . -type f \( -name "*.dvtcolortheme" -or -name "*.xccolortheme" \)`

mkdir -p $TARGET_DIRECTORY

for f in $TARGET_FILES; do
  cp $f $TARGET_DIRECTORY`basename $f`;
done
