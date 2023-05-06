#!/bin/sh

# clean workspace folder
rm -rf /workspaces/debian
mkdir /workspaces/debian
ln -s /workspaces/debian ~/Projects
git init /workspaces/debian

cd ~

exit 0
