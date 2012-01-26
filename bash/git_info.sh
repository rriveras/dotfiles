#!/bin/bash

# author: Duane Johnson
# email: duane.johnson@gmail.com
# date: 2008 Jun 12
# license: MIT
# 
# Based on discussion at http://kerneltrap.org/mailarchive/git/2007/11/12/406496

pushd . >/dev/null
ECYAN='\e[1;36m'
# Find base of git directory
while [ ! -d .git ] && [ ! `pwd` = "/" ]; do cd ..; done

# Show various information about this git directory
if [ -d .git ]; then
  echo -e "\033[0;36m############## Remote URL: ###############\033[0m\n"
  git remote -v
  echo

  echo -e "\033[0;36m############ Remote Branches: ############\033[0m\n"
  git branch -r
  echo

  echo -e "\033[0;36m############# Local Branches: #############\033[0m\n"
  git branch
  echo

  echo -e "\033[0;36m############## Latest Commit ##############\033[0m\n"
  git log --max-count=1
  echo

  echo -e "\n=> Type 'git log' for more commits, or 'git show' for full commit details.\n"
else
  echo -e "\n=> Not a git repository.\n"
fi

popd >/dev/null
