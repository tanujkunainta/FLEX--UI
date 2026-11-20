#!/bin/bash

# Navigate to the FLEX--UI directory
cd $HOME/FLEX--UI || exit

# Pull the latest changes from the remote repository
git pull origin main

# Provide feedback to the user
echo "Repository updated successfully!"
