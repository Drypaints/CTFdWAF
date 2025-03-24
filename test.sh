#!/bin/bash

make install
make up
# echo "127.0.0.1 ctfd.demo.lan"
sleep 100
curl -sSkiL https://ctfd.demo.lan
make down
make clean
