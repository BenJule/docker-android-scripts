#!/bin/bash
curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod a+x repo
export PATH=$PWD:$PATH
git config --global user.name "Varun Bhat"
git config --global user.email "varunbhat.kn@gmail.com"

repo init -u https://github.com/LineageOS/android.git -b cm-14.1
repo sync 
