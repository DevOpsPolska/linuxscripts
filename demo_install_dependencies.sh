#!/bin/bash
#initial system update
echo "Start" > $HOME/customscript.log
echo "update" >> $HOME/customscript.log
apt-get update
echo "upgrade" >> $HOME/customscript.log
apt-get -y upgrade
echo "Finish" >> $HOME/customscript.log
