#!/bin/sh

if test -d CTFd
then
    echo "Directory CTFd exists"
else
    echo "Cloning..."
    git clone https://github.com/CTFd/CTFd.git
fi
