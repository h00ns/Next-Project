#!/bin/bash
REPOSITORY=/home/ubuntu/CodeDeploy

cd $REPOSITORY

sudo yarn install

sudo npx pm2 reload all