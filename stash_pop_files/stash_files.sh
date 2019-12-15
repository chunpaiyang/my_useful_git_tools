#!/bin/sh

FILES=`git ls-files -m`
for file in $FILES
do
  echo $file
  git stash push -m $file $file
done
