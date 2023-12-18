#!/bin/bash

#Author: Eshan Roy <src.eshan@gmail.com>
# URL:


#github config
url="https://github.com/snigdhalinux/hawkeye.git"
branch=master
#local dir config
# dir="/home/snigdha/Documents/GitHub/snigdhaos-gnome-background"
dir=$(pwd)

# go to local dir
cd $dir

# pull -> github
git pull origin $branch

# adding -> git
git add --all .

#commit message
echo "Commit Message: "

read $input

#commit action
git commit -m "$input"

#push -> github
git push -u origin $branch
