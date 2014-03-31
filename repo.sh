#!/bin/bash

version=$(grep main /etc/apt/sources.list | grep -v \# | grep -v "\-security" | grep -v "\-updates" | awk '{print $3}' | uniq)
echo -e "\ndeb http://repo.percona.com/apt ${version} main\ndeb-src http://repo.percona.com/apt ${version} main\n" >> /etc/apt/sources.list
