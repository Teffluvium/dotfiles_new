#!/usr/bin/env bash
# Clone all specified repos

cd ~/Projects || return 1



REPOS=(
  # Fill out repos here
  # "org/repo"
  "Teffluvium/CS50_ProblemSets"
  "Teffluvium/DSP_py"
  "Teffluvium/LaTeX-Docs"
  "Teffluvium/Quaternians_cpp"
  "Teffluvium/Quaternions_Py"
  "Teffluvium/dot_vim"
  "Teffluvium/dotfiles_new"
  "Teffluvium/imageTraining_py"
  "Teffluvium/matlab_tools"
  "Teffluvium/my_boids"
  "Teffluvium/projecteuler"
  "VorData/JPForensics-Android"
  "VorData/JPForensics-iOS"
  "VorData/imageTraining"
  "VorData/matlab_embedding"
  "VorData/php_web_app"
  "VorData/vorcoder"
  "VorData/vorcore"
)

for REPO in "${REPOS[@]}"
do
  echo "----- CLONING ----- $REPO"
	git clone git@github.com:"$REPO".git --recursive
done
