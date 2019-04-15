#!/bin/bash

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
    name="git clone $name"
    $name
done < "./Git-Repository-Synchronization-Tool/bin/repo-list.txt"
