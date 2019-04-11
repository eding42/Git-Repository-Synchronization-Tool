#!/bin/bash
declare -a my_array
for f in *; do
    if [ -d "$f" ] ; then
        cd "$f"
        echo -e "\n ------------------ NEW REPOSITORY ------------------\n"
        echo "Now checking $f"
        if [ -d .git ] ; then 
            git add .
            git diff-index --quiet HEAD --
            if [ "$?" -ne 0 ] ; then
                echo "THE REPO NEEDS TO BE COMMITTED"
                my_array=( "${my_array[@]}" "${PWD##*/}" )
            fi
            git status
            git push
            git pull
        fi
        cd ..
    fi
done
RED=`tput setaf 1`
reset=`tput sgr0`
green=`tput setaf 2`
if [ ${#my_array[@]} -ne 0 ]; then
    var=$(IFS=' '; echo "${my_array[*]}")
    var="${RED}$var${reset}"
    if [ ${#my_array[@]} -eq 1 ]; then
        var="The repository $var"
        var="$var has uncomitted changes."
    else
        var="The repositories $var"
        var="$var have uncomitted changes."
    fi
    echo "$var"
else 
    echo -e "\n${green}All repositories are up to date!${reset}"
fi
