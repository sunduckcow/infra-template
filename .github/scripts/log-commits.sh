#!/bin/bash

#logs all commits since last tag or from the begining

author=`git log --pretty=format:'%an'  @^..@`
echo "Ответственный за релиз $author"
echo "коммиты, попавшие в релиз:"

nTags=`git tag | wc -w | xargs`

if [ $nTags -gt "1" ] # nTags > 1
then
last_tag=`git describe --tags @^ --abbrev=0` #get last tag name before current
git log --pretty=format:'%h %an %s\n' $last_tag.. | tr -s '\n' ' ' #log all commits after prew tag
else
git log --pretty=format:'%h %an %s' #just log all commits
fi