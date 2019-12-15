#!/bin/sh

SHA=`git rev-parse HEAD`

FILES=`git diff-tree --no-commit-id --name-only -r $SHA`

for file in $FILES
do
  echo $file
  pop_index=`git stash list | grep $file | cut -d':' -f1`
  if [ $? != 0 ];then
    exit 1
  fi
  if [ "$pop_index" = "" ];then
    echo "empty index: $pop_index"
    continue
  fi
  git stash pop $pop_index
done
