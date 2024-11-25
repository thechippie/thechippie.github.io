#!/bin/bash

# Prompt for commit message
read -p "Enter commit message: " commit_message

# Check if the commit message is empty
if [ -z "$commit_message" ]; then
    echo "Commit message cannot be empty. Exiting."
    exit 1
fi

# Add all changes to the staging area
git add .

# Commit the changes with the provided message
git commit -m "$commit_message"

# Push the changes to the remote repository
git push origin main  # Change 'main' to your branch name if different

echo "All changes have been pushed to GitHub."