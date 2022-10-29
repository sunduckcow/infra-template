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

last_tag=$(git describe --tags @^ --abbrev=0)
first_commit=$(git log --pretty=format:"%h" --reverse | head -1)
if last_tag 
then
log_border=$last_tag
else
log_border=$first_commit
fi

echo $last_tag
echo $first_commit
echo $log_border

#git log --pretty=format:'%h %an %s' $log_border.. #try to combine