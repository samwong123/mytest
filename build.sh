#!/usr/bin/bash
export GOPATH=$WORKSPACE
mkdir -p $GOPATH/src 

project_name=$(echo $GIT_URL | awk -F/ '{print $NF}' | sed 's/.git//g')
echo ${project_name}

ln -f -s $WORKSPACE $GOPATH/src/$project_name
go get $project_name
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o $project_name $project_name