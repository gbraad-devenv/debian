#!/bin/sh

# clean workspace folder
rm -rf /workspace/debian
mkdir /workspace/debian
ln -s /workspace/debian ~/Projects
git init /workspace/debian

cd ~

exit 0