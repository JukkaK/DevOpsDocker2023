#!/bin/sh

# Get github User
github_username=$1

# Get the repository name from the first argument
repo_name=$2

# Get the container name from the second argument
container_name=$3

#Clone the repo under tmp
CD /tmp

# Clone the GitHub repository
git clone https://github.com/$github_username/$repo_name.git

#CD to repo
cd $repo_name


# Build the Dockerfile
docker build -t $container_name .