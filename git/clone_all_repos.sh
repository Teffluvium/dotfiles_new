#!/usr/bin/env bash
# Clone all specified repos

cd ~/Projects || return 1



REPOS=(
  # Fill out repos here
  # "org/repo"
  "Teffluvium/dotfiles_new"
  "Teffluvium/my_boids"
  "Teffluvium/CS50_ProblemSets"
  "Teffluvium/DSP_py"
  "Teffluvium/Quaternions_Py"
  "Teffluvium/imageTraining_py"
  "Teffluvium/Quaternians_cpp"
  "Teffluvium/matlab_tools"
  "Teffluvium/dot_vim"
  "Teffluvium/projecteuler"
  "Teffluvium/LaTeX-Docs"
  "VorData/vorcoder"
  "VorData/matlab_embedding"
  "VorData/imageTraining"
  "VorData/JPForensics-iOS"
  "VorData/JPForensics-Android"
  "VorData/vorcore"
  "VorData/php_web_app"
)

for REPO in "${REPOS[@]}"
do
  echo "----- CLONING ----- $REPO"
	git clone git@github.com:"$REPO".git --recursive
done
