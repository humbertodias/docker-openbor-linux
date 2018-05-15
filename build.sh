#!/bin/bash

#git clone https://github.com/DCurrent/openbor.git
curl -LOk https://github.com/DCurrent/openbor/archive/master.tar.gz
tar xvfz master.tar.gz
cd openbor-master/engine
./build.sh 4 amd64
cd
