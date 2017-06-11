#!/bin/bash
#initial system update
echo "Start" > $HOME/customscript.log
id -a >> $HOME/customscript.log
echo "update" >> $HOME/customscript.log
sudo apt-get update
echo "upgrade" >> $HOME/customscript.log
sudo apt-get -y upgrade
echo "Finish" >> $HOME/customscript.log
