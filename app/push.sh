#!/bin/bash
cp prod/app.tar.gz ../openshift
rm prod/app.tar.gz
cd ../openshift
tar -xvf app.tar.gz --transform 's|^bundle/||'
rm app.tar.gz
git add .
git commit -am "a change"
git push
