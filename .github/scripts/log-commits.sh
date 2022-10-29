#!/bin/bash
echo 'TEST!!'
#echo "Ответственный за релиз $(git log --pretty=format:'%an'  @^..@)"
#echo "коммиты, попавшие в релиз:"
#git log --pretty=format:'%h %an %s' $(git describe --tags @^ --abbrev=0)..