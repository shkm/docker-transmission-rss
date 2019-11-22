#!/usr/bin/env sh

groupmod -o -g $GID abc
usermod -o -u $UID abc

exec su -c "$@" abc
