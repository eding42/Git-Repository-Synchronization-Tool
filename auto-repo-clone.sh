#!/bin/bash

rm ./bin/repo-list.txt

echo "Hello World!"

cd ..

for f in *; do
    if [ -d "$f" ] ; then
        cd $f 
        if [ -d .git ] ; then 
            echo -e "\nNow scanning $f"
            git config --get remote.origin.url >> "../Git-Repository-Synchronization-Tool/bin/repo-list.txt"; 
            cd ..
        fi
    fi
done

echo "reached this point"

while read name; do
yes=$name
name="git clone $name"
    if ! $name;
    then
        status="echo '${PWD##*/}'"
        status="$status has already been cloned."
    else
        name="git clone $yes"
        #$name
        echo "$yes"
    fi
done < "./Git-Repository-Synchronization-Tool/bin/repo-list.txt"
