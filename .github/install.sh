#!/bin/sh

# clean workspace folder
rm -rf /workspaces/debian
mkdir /workspaces/debian
ln -s /workspaces/debian ~/Projects
git init /workspaces/debian

cd ~

sudo --preserve-env=TAILSCALE_AUTHKEY /etc/init.d/tailscaled start
