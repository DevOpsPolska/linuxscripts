#!/bin/bash
#initial system update
echo "Start" > $HOME/customscript.log
id -a >> $HOME/customscript.log
echo $0 >> $HOME/customscript.log
echo "update" >> $HOME/customscript.log
sudo apt-get update

echo "installation" >> $HOME/customscript.log
sudo apt-get install tree
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install openjdk-8-jre -y
sudo apt-get install mongodb -y
sudo apt-get install tomcat7 -y
sudo apt-get install wget -y

# Set Java environment variables
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:/usr/lib/jvm/java-8-openjdk-amd64/bin

echo "upgrade" >> $HOME/customscript.log
# issue with custom script or waagent do not upgarde
# sudo apt-get -y upgrade
echo "Finish" >> $HOME/customscript.log
