#!/usr/bin/env bash

export PATH=$PATH:$HOME/bin

# Android SDK / NDK
if [[ `uname` == 'Darwin' ]]; then
    export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
    export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
fi