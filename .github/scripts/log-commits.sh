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


LAST=$(git describe --tags @^ --abbrev=0 || git log --pretty=format:"%h" --reverse | head -1) 
echo $LAST

git log --pretty=format:'%h %an %s' $LAST.. #try to combine