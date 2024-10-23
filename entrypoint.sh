#!/bin/bash

echo "====================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.mail "${INPUT_EMAIL}"
git config --global -add safe.directory /github/workspace

python3 /usr/bin/feed.py 

git add -A && commit -m "Update Feed"
git push --set-upstrea origin main

echo "====================="