#!/bin/bash

#logs all commits since last tag or from the begining

author=`git log --pretty=format:'%an'  @^..@`

nTags=`git tag | wc -w | xargs`

if [ $nTags -gt "1" ] # nTags > 1
then
last_tag=`git describe --tags @^ --abbrev=0` #get last tag name before current
logs=$(git log --pretty=format:'\n%h %an %s' $last_tag.. | tr -d '\n') #log all commits after prew tag
else
logs=$(git log --pretty=format:'\n%h %an %s' | tr -d '\n') #just log all commits
fi

echo "Ответственный за релиз $author\nкоммиты, попавшие в релиз:$logs"