#!/bin/bash
curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod a+x repo
export PATH=$PWD:$PATH
git config --global user.name "BenJule"
git config --global user.email "benlue@s3root.ovh"

repo init -u https://github.com/LineageOS/android.git -b cm-14.1
repo sync 
