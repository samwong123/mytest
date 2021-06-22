#!/usr/bin/bash
export GOPATH=$WORKSPACE
mkdir -p $GOPATH/src 

export PATH=$PATH:/var/jenkins_home/tools/org.jenkinsci.plugins.golang.GolangInstallation/go-1.16/go/bin

project_name=$(echo $GIT_URL | awk -F/ '{print $NF}' | sed 's/.git//g')
echo ${project_name}

ln -f -s $WORKSPACE $GOPATH/src/$project_name
go get $project_name
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o $project_name $project_name