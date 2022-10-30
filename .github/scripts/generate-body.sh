#!/bin/bash
#
# run ./.github/scripts/generate-body.sh "hello world" "first code" text 123 
#
# and get {"hello world":"first code","text":"123"}
#

if [ $# -lt 3 ] # if there 2, 1 or 0 args
then
echo '{"'"$1"'":"'"$2"'"}'
exit 0
fi

input=(0 "$@") #make array if a b c is args - returns 0 a b c

bracket='"' # for concatination

for i in $(seq 1 $((($#/2+$#%2)*2))) # makes from 1 to ceil(number of args) iterations
do
pair_index=$((($i + 1)/2))

if [ $(($i % 2)) -eq 1 ] # if its key or value of body (json)
then
#echo 0
pairs[$pair_index]=$bracket${input[$i]}$bracket: #key
else
#echo 1
pairs[$pair_index]=${pairs[$pair_index]}$bracket${input[$i]}$bracket #value
fi
done 

result='{'${pairs[1]} #initial value 

for i in $(seq 2 ${#pairs[*]})
do
result=$result,${pairs[$i]} 
done

result=$result'}'

echo $result