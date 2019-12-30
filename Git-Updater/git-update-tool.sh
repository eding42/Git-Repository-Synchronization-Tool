#!/bin/bash
declare -a uncommitted_repos
for f in *; do
    if [ -d "$f" ] ; then
        cd "$f"
        echo -e "\n ------------------ NEW REPOSITORY ------------------\n"
        echo "Now checking $f"
        if [ -d .git ] ; then
			echo "Found git repository in $f"
			echo "Updating repository...Pulling changes from remote..."
			git pull
            git add .
            git diff-index --quiet HEAD --
            if [ "$?" -ne 0 ] ; then
                echo "THE REPO NEEDS TO BE COMMITTED"
                uncommitted_repos=( "${uncommitted_repos[@]}" "${PWD##*/}" )
            fi
			branch=$(git rev-parse --abbrev-ref HEAD)
			echo "CURRENTLY ON: ${branch}"
            git status
            git push
        fi
        cd ..
    fi
done
red=`tput setaf 1`
reset=`tput sgr0`
green=`tput setaf 2`
if [ ${#uncommitted_repos[@]} -ne 0 ]; then
    var=$(IFS=' '; echo "${uncommitted_repos[*]}")
    var="${red}$var${reset}"
    if [ ${#uncommitted_repos[@]} -eq 1 ]; then
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
