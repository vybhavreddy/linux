#!/bin/sh
#script by Vybhav to isntall tomcat.

sudo yum -y install java-1.8.0-openjdk unzip wget
rm -rf /opt/tomcat
sudo mkdir /opt/tomcat
sudo chown ec2-user:ec2-user /opt/*
cd /opt/tomcat
wget https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.zip
unzip apache*
cd /opt/tomcat/*/bin/
chmod a+x *
nohup ./catalina.sh run &

