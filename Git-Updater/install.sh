#!/bin/bash

# Copies the script to user repository directory.
cp ./Git-Updater/git-update-tool.sh ..
cp git-update-tool.sh ..
cd ..
cd ..
chmod +x git-update-tool.sh
echo "Installation finished! Switch to your main repository directory, and run the script with './git-sync-tool.sh'"
