#!/bin/bash

#
# Written by Vivek G. Gite <vivek@nixcraft.com>
#
# Latest version can be found at http://www.nixcraft.com/
#
# Q19
#

nouser=`who | wc -l`
echo -e "User name: $USER (Login name: $LOGNAME)" >> /tmp/info.tmp.01.$$$
echo -e "Current Shell: $SHELL"  >> /tmp/info.tmp.01.$$$
echo -e "Home Directory: $HOME" >> /tmp/info.tmp.01.$$$
echo -e "Your O/s Type: $OSTYPE" >> /tmp/info.tmp.01.$$$
echo -e "PATH: $PATH" >> /tmp/info.tmp.01.$$$
echo -e "Current directory: `pwd`" >> /tmp/info.tmp.01.$$$
echo -e "Currently Logged: $nouser user(s)" >> /tmp/info.tmp.01.$$$
echo -e "os and kernel version: `uname -a`">>/tmp/info.tmp.01.$$$

if [ -f /etc/shells ]
then
    echo -e "Available Shells: " >> /tmp/info.tmp.01.$$$
    echo -e "`cat /etc/shells`"  >> /tmp/info.tmp.01.$$$
fi
    
echo -e "--------------------------------------------------------------------" >> /tmp/info.tmp.01.$$$ 
echo -e "Computer CPU Information:" >> /tmp/info.tmp.01.$$$ 
echo -e "--------------------------------------------------------------------" >> /tmp/info.tmp.01.$$$ 
cat /proc/cpuinfo >> /tmp/info.tmp.01.$$$

echo -e "--------------------------------------------------------------------" >> /tmp/info.tmp.01.$$$ 
echo -e "Computer Memory Information:" >> /tmp/info.tmp.01.$$$ 
echo -e "--------------------------------------------------------------------" >> /tmp/info.tmp.01.$$$ 
cat /proc/meminfo >> /tmp/info.tmp.01.$$$

echo -e "--------------------------------------------------------------------" >> /tmp/info.tmp.01.$$$
echo -e "File System usage:" >> /tmp/info.tmp.01.$$$
echo -e "--------------------------------------------------------------------" >> /tmp/info.tmp.01.$$$
echo -e "`df`" >> /tmp/info.tmp.01.$$$

cat /tmp/info.tmp.01.$$$
