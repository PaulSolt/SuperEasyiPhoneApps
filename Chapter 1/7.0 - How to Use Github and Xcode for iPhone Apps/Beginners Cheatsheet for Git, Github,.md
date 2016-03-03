Beginners Cheatsheet for Git, Github, and Xcode


Terminal 101

List files and folders

	ls

Change directory

	cd directoryName

Go up a directory

	cd ..
Current directory

	pwd

Clear the text output

	clear

Open current directory with Finder
	
	open .

Git on with Terminal

	git commit -m "My message"

Add single file

	git add ViewController.swift

Add all changed files
	
	git add *

Git Log

	git log

1. Git Log Scroll: <kbd>Enter</kbd>
2. Git Log Quit: <kbd>Q</kbd>

vim (vi) text editor (If you forget the -m "my message")

Insert text:

	i

Exit text editing mode: Press <kbd>Esc</kbd>

Save and Quit: 
	Press: <kbd>Shift</kbd> + <kbd>Z</kbd> + <kbd>Z</kbd>
Quit: 
	Type: <kbd>:q</kbd>
	Quit no saving: 
		Type: <kbd>:q!<kbd>

git push master origin

git push

git pull master origin

git pull

git revert multiple commits (not just an individual change)

Uncommit the past 4 changes

	HEAD HEAD~1 HEAD~2 HEAD~3 HEAD~4 | HEAD~5
	
^4 means the parent of commit 4 back
or you can use parent of 4, which would be 5 (not inclusive)

	git revert --no-commit HEAD~4^..HEAD

or

	git revert --no-commit HEAD~5..HEAD

http://serebrov.github.io/html/2014-01-04-git-revert-multiple-recent-comments.html
