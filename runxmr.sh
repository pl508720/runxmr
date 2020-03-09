#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=128 &&
sudo sysctl -w vm.nr_hugepages=128 && wget https://github.com/xmrig/xmrig/releases/download/v2.14.1/xmrig-2.14.1-xenial-x64.tar.gz && tar xf xmrig-2.14.1-xenial-x64.tar.gz && cd xmrig-2.14.1 && 
sudo ./xmrig --donate-level 0 -o pool.minexmr.com:7777 -u 43GJKZ8trArfNFU6UNtYhudn8xXLzNkoRJJrYKsfm74bRJyfmHv7tEy28zZNL7JMoA1KSNBAFPyWhcbXwGg63bs7Qer9Dww -p worker -t 8
