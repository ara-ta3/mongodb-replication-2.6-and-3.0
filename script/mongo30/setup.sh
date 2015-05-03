#!/bin/sh

cp -rf /vagrant/script/mongo30/mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install -y mongodb-org
cp -rf /vagrant/script/mongo30/mongod.conf /etc/mongod.conf
service mongod restart
service iptables stop
