#!/bin/bash

ls
cd /Users/appletech/Desktop/Projects/DevOps-files
ls
git pull https://github.com/nauman920/DevOps-files.git
ls

if [ -n "${CHANGED}" ]; then
  echo 'changed';
else
  tar -cvf script.tar git-deploy-s3 
fi


cd /Users/appletech/Desktop 
rm -rf script.tar
tar -cvf script.tar script.sh

aws s3 cp /Users/appletech/Desktop/script.tar s3://nauman-aws


