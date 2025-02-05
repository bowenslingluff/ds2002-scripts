#!/bin/bash

echo "Get all repositories in GitHub"

curl -s https://api.github.com/users/bowenslingluff/repos | jq -r '.[].name'
