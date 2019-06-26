#!/usr/bin/env bash

# ok, this is a painfully composed script
# it should recover from whatever stupid permissions i get the fs into

# we start by assuming we have no shortcut permissions, not even to look inside
# go to the directory before the shortcut
cd ~/shortcut/..

# as root, give reasonable permissions
# the capital X means, execute permissions for directories only
# so you can look around inside
sudo chmod -R u=rwX,g=rX,o=rX ./shortcut

# now we should have the permission to enter the directory
cd ./shortcut

# now, as root, transfer ownership to the current user
sudo chown -R ${USER}:${GROUPS} .

# now, as the normal user, now having ownership, set reasonable permissions again
chmod -R u=rwX,g=rX,o=rX .

# finally, mark all bash scripts as executable
chmod -R u=rwx,g=rX,o=rX *.sh
cd scripts
chmod -R u=rwx,g=rX,o=rX *.sh
