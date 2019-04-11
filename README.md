# Git Repository Synchronization Tool

A simple bash script to synchronize all of your git repositories to their respective web-hosting sites!

No other dependencies needed!

If you run linux, this should work perfectly. 

You may need to enter your login credentials for each repo. If you would like to bypass that, please refer to this [page.](https://gist.github.com/technoweenie/1072829)



### Installation

`git clone https://github.com/eding42/Git-Repository-Synchronization-Tool`
`cd Git-Repository-Synchronization-Tool`

Run the simple "installer," which just copies the script to the mother directory.

`bash install.sh`

Run the script from your main directory of repositories. The script will automatically pull/push each repository. 

`bash git-sync-tool.sh`

or make the script an executable:

`chmod +x git-sync-tool.sh`

and run the script directly:

`./git-sync-tool.sh`

If any bugs are encountered, please post them to GitHub. 
