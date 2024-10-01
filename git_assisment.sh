#!/bin/bash

# Step 1: Clone the remote repository
git clone https://github.com/Gaurav0111/CSI_Assignment.git
cd CSI_Assignment

# Add a file and commit the changes
echo "This is an example file." > assignment2.txt
git add assignment2.txt
git commit -m "First commit"

# Add the remote repository URL (replace with your remote repository URL)
git remote add origin https://github.com/yourusername/CSI_Assignment.git

# Push to the master branch
git push -u origin master

# Step 2: Create a new branch, commit and push changes, then merge using a pull request

# Create a new branch
git checkout -b Assignment_2

# Make changes and commit on the new branch
echo "Changes on the new branch." >> assignment2.txt
git add assignment2.txt
git commit -m "Commit on new branch"

# Push the new branch to the remote repository
git push -u origin Assignment_2

# Assuming a pull request is created and merged manually on the GitHub web interface

# Step 3: Undo the last commit or remove the last created file from the remote repository

# Undo the last commit (soft reset)
git reset --soft HEAD~1
git push -f  # Force push to update the remote branch

# Alternatively, to remove the last created file and commit the removal
# Ensure the file exists before attempting to remove it
FILE="previously_committed_file.txt"
if [ -f "$FILE" ]; then
    rm "$FILE"
    git add "$FILE"
    git commit -m "Removed the last created file"
    git push
fi

# Step 4: Resolve merge conflicts (manual steps typically required)

# Simulate a conflict (for demonstration, manually create a conflict situation)
# For this example, we assume conflicts have arisen and need resolution
git checkout master
echo "Conflicting change" >> assignment2.txt
git add assignment2.txt
git commit -m "Introduce conflict"

git checkout Assignment_2
echo "Different change causing conflict" >> assignment2.txt
git add assignment2.txt
git commit -m "Introduce conflicting change"

# Attempt to merge and resolve conflicts
git checkout master
git merge Assignment_2

# Open the conflicted file and manually resolve conflicts, then:
# Assuming manual conflict resolution is done here
# Example: vim assignment2.txt  # Manually resolve conflicts in your editor
git add assignment2.txt
git commit -m "Resolved merge conflicts"

# Push the resolved merge to the remote repository
git push

# Step 5: Practice more git commands (additional common commands)

# Display the status of the working directory and staging area
git status

# Show the commit history
git log

# Show the differences between commits
git diff

# Create a new tag
git tag -a v1.0 -m "Version 1.0"
git push origin v1.0

# Show all branches
git branch -a

# Fetch changes from the remote repository
git fetch

# Pull changes from the remote repository
git pull origin master

# End of the script
echo "Script execution completed."
