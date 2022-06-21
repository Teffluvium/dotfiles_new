#!/usr/bin/env bash
# shellcheck disable=SC2016

# Name
git config --global user.name "Tim Herrin"

if [[ -z $(git config --global --get user.email) ]]; then
  START="\033[96m\033[1m"
  END="\033[0m"
  echo -e "!!!\n\n${START}Git Email not set, please configure!\n\ngit config --global user.email 'test@email.com'\n\n!!!${END}"
fi

