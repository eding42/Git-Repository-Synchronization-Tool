# Git Repository Synchronization Tool

A simple bash script to synchronize all of your git repositories to their respective web-hosting sites!

No other dependencies needed!

If you run linux, this should work perfectly. 

You may need to enter your login credentials for each repo. If you would like to bypass that, please refer to this [page.](https://gist.github.com/technoweenie/1072829)



### Installation

Clone the repo into your main repository directory. 

`git clone https://github.com/eding42/Git-Repository-Synchronization-Tool`
`cd Git-Repository-Synchronization-Tool`


#PLEASE IGNORE EVERYTHING BELOW THIS
###I promise I'll write a new readme after I finish the script. 

Run the simple "installer," which just copies the script up one level to your main repository directory. The installer will also make the main script and executable. 

`bash install.sh`

Run the script from your main directory of repositories. The script will automatically pull/push each repository. 

`./git-sync-tool.sh`

If any bugs are encountered, please post them to GitHub. 
