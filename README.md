# Git Repository Synchronization Tool

A simple bash script to synchronize all of your git repositories to their respective web-hosting sites!

No other dependencies needed!

If you run linux, this should work perfectly. 

You may need to enter your login credentials for each repo. If you would like to bypass that, please refer to this [page.](https://gist.github.com/technoweenie/1072829)

### Cloning the Repository

Clone the repo into the parent directory for all of your git repositories. 

`git clone https://github.com/eding42/Git-Repository-Synchronization-Tool`

`cd Git-Repository-Synchronization-Tool`

### Git Update Tool Installation

cd into 

Run the simple "installer," which just copies the script two levels up to your main repository directory. The installer will also make the main script and executable. 

`bash install.sh`

Run the script from the parent directory.

`./git-sync-tool.sh`

 The script will automatically update each repository, and inform you if there are any uncommitted changes. 

If any bugs are encountered, please post them to GitHub.