#!/bin/bash
cd ../..

ls

for f in *; do
    current="Currently checking $f"
    echo -e "\n$current"
    if [[ "$f" = "git-update-tool.sh" ]] ; then
        echo "There is already a script present!"
        echo "Removing duplicate script"
        rm "git-update-tool.sh"
        echo "Duplicate Removed!"
    else
        echo -e "No duplicate, proceeding..."
    fi
done

cd ./Git-Repository-Synchronization-Tool/Git-Updater

# Copies the script to user repository directory.

# Below are the old installation instructions... please disregard.

#cp ./Git-Updater/git-update-tool.sh ..
#cp git-update-tool.sh ..
#cd ..
#cd ..
#chmod +x git-update-tool.sh

cp ./git-update-tool.sh ..
cd ..
cp ./git-update-tool.sh ..
rm ./git-update-tool.sh
echo -e "\nFinished copying script to parent directories..."
cd ..
chmod +x git-update-tool.sh
echo "Script is now an executable..."

echo "Installation finished! Switch to the parent directory for your repository directory, and run the script with './git-sync-tool.sh'"
