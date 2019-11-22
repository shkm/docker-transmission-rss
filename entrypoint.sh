#!/bin/ash

# Fix user/group IDs
groupmod -o -g $GID abc
usermod -o -u $UID abc

# Go!
su -s /bin/ash -c "$@" abc
