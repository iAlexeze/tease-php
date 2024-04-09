#!/bin/bash

APP_NAME='tease'
REPO_NAME='git@bitbucket.org:iamtechnologies/ridease.git'

# Enable ssh-agent
eval $(ssh-agent -s) > ./tmp 2>&1 

# Add SSH Key 
ssh-add ~/.ssh/bitbucket-access > ./tmp 2>&1

# Remove temporary file
rm ./tmp

# Sync the file if there is any changes
dokku git:sync --build $APP_NAME $REPO_NAME
