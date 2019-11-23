#!/bin/bash
#reposync -n -r docker-ce-stable -p ./repos
dnf reposync -p repos --repo docker-ce-stable --newest-only
createrepo repos/docker-ce-stable

docker build -t taurus/linuxrepo .