# create new Git repository
> git init

# check out the status
> git status

# adding changes: 
	> git add name_of_file.sth
	# now your file is in the staging area and not yet in the repository;

	> git commit -m "description"
	# this way you add your staged changes in the repository

# log:
# Git's log is a journal that remembers all the changes we've committed so far, in the order we committed them
> git log

# to push our local repo to the Git repository:
> git remote add name_of_remote repository URL

# and to push the changes to the master:
> git push -u name_of_remote master

# check out changes made by other people:
> git pull name_of_remote master

# to check out the exact changes and additions ; 
> git diff
> git diff HEAD # in order to check out the changes in the head
> git diff --staged # to check out changes on staged files

# to unstage files:
> git reset directory/name_of_file.sth

# to get rid out of all changes you have done since the last commit
> git checkout -- name_of_file.sth

# to create a working branch:
> git branch name_of_branch

# check out branches:
> git branch

# to switch to branch:
> git checkout name_of_branch

# to remove all e.g. text files 
> git rm '*.txt'
> git status # to checkout all changes ready to commit
> git commit -m "remove all txt files" # and commit them
> git checkout master # go to master branch

# to merge branches:
	# go to the master branch (where you want to add your changes finally)
	> git merge name_of_branch

# clean up after yourself :-) = delete the branch you've worked on:
> git branch -d name_of_branch
> git push # to push all everything you've been working on to your remote repository

# other useful commands - remote branches:
> git remote -v # to see the URL that Git has stored for the shortname to be expanded
> git fetch pb # to fetch all the information from else's repository
> git fetch name_of_remote
> git fetch origin  # etches any new work that has been pushed to that server since you cloned (or last fetched from) it
# the fetch command pulls the data to your local repository — 
# it doesn’t automatically merge it with any of your work or modify what you’re currently working on
> git push name_of_remote name_of_branch / 
> git push origin master # This command works only if you cloned from a server to which you have write access and if nobody has pushed in the meantime

> git remote show name_of_remote # helps you inspect the particular remote
> git remote rename old_name new_name # to rename your remote's shortname















