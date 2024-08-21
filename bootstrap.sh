#!/bin/bash

SSH_USERNAME=$1
GITHUB_ACCOUNT_NAME=$2
GITHUB_REPO_NAME=$3
GITHUB_BRANCH_NAME=$4
SCRIPT_TO_RUN=$5
GITHUB_ACCESS_TOKEN=$6
GITHUB_REPO_URL="github.com/$GITHUB_ACCOUNT_NAME/$GITHUB_REPO_NAME.git"

cd /home/$SSH_USERNAME
sudo rm -rf $GITHUB_REPO_NAME
sudo git clone --branch $GITHUB_BRANCH_NAME --single-branch https://$GITHUB_ACCESS_TOKEN@$GITHUB_REPO_URL
cd $GITHUB_REPO_NAME
sh $SCRIPT_TO_RUN $SSH_USERNAME $GITHUB_ACCESS_TOKEN
