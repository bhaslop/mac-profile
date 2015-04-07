#!/bin/bash

ismaster=`git branch | grep \* | grep master`

if [ -z "$ismaster" ]; then
 echo "Tenés que pararte en master! (git checkout master)"
 exit 1
fi

echo "Eliminando branches remotos ya mergeados con master...."
branches=( $(git branch -r --merged | grep -v "\master" | xargs -n 1) )

for branch in ${branches[@]}; do
	branchName=$(echo $branch | cut -f2 -d'/')
	$(git push origin :$branchName)
done


`git tag -d $(git tag) &>/dev/null`
`git fetch --tags &>/dev/null`

echo "Eliminando tags temporales (contienen '-')"
tags=( $(git tag -l | grep "-") )

for tag in ${tags[@]}; do
	$(git push origin :refs/tags/$tag)
done

`git tag -d $(git tag) &>/dev/null`
`git fetch --tags &>/dev/null`

echo "Eliminando branches que ya no existen en remote"
`git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d`