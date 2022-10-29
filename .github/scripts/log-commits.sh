#!/bin/bash

echo "Ответственный за релиз $(git log --pretty=format:'%an'  @^..@)"
echo "коммиты, попавшие в релиз:"

nTags=`git tag | wc -w | xargs`

if [ $nTags -gt "1" ] # nTags > 1
then
last_tag=`git describe --tags @^ --abbrev=0` #get last tag name before current
git log --pretty=format:'%h %an %s' $last_tag.. #log all commits after prew tag
else
git log --pretty=format:'%h %an %s' 
fi