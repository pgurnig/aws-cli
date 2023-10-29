#!/bin/bash

# create a repository called gma-repo-utility. gma is a fictional acronum
aws codecommit create-repository --repository-name gma-repo-utility --repository-description "Utility Repo for Applications" --tags Department=AppDev,Type=OpenSource --region us-east-2

# create a directory
mkdir gma-repo-utility && cd gma-repo-utility

# initialize a git repo, add a README.md, commit it, push it to the remote
git init
touch README.md
# git add .
# git commit -m "Initial commit"
# git remote add https://git-codecommit.us-east-2.amazonaws.com/v1/repos/gma-repo-utility
# git push

