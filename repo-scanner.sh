#!/bin/bash

echo "Welcome to Repository Scanner! This handy script outputs a list of repo sources to the 'bin' sub-folder."

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
