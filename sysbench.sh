#!/bin/bash

#apt-get -y install bzr automake libtool libperconaserverclient18.1-dev make libssl-dev

cd /root
bzr branch lp:sysbench

cd /root/sysbench
./autogen.sh
./configure
make
make install
