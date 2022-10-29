#!/bin/bash

#echo $(git tag) | wc -w | xargs
#nTags=$($(git tag) | wc -w | xargs
#echo $nTags

#echo "Ответственный за релиз $(git log --pretty=format:'%an'  @^..@)" #author name
#echo "коммиты, попавшие в релиз:"
#git log --pretty=format:"%h" --reverse | head -1  #first commit
#LAST=$(git describe --tags @^ --abbrev=0)  #|| git log --pretty=format:"%h" --reverse | head -1
#echo $LAST
#git log --pretty=format:'%h %an %s' $(git describe --tags @^ --abbrev=0).. #all commits scinse last tag
#git log --pretty=format:'%h %an %s' $LAST.. #try to combine

# last_tag=$(git describe --tags @^ --abbrev=0)
# first_commit=$(git log --pretty=format:"%h" --reverse | head -1)

# nTags=`echo $last_tag | wc -w | xargs`

# if [ $nTags = "0" ] 
# then
# log_border=$first_commit
# else
# log_border=$last_tag
# fi

# git log --pretty=format:'%h %an %s' $log_border.. #try to combine

nTags=`git tag | wc -w | xargs`
n="1"

if [ $nTags -gt "1" ]
then
last_tag=`git describe --tags @^ --abbrev=0`
git log --pretty=format:'%h %an %s' $last_tag..
else
git log --pretty=format:'%h %an %s'
fi