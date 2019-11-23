#!/bin/bash
#reposync -n -r docker-ce-stable -p ./repos
#make sure you have repost config ceated /etc/yum.repos.d/yourepos.repo
dnf reposync -p repos --repo docker-ce-stable --newest-only
createrepo repos/docker-ce-stable
dnf reposync -p repos --repo centos_7 
createrepo repos/centos_7
docker build -t taurus/linuxrepo .