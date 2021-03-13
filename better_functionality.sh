#!/bin/bash
if [ -x $PREFIX/bin/rlwrap ]
then
rlwrap bash tnh4 $1
else
echo -e "\e[1;35mInstalling Rlwrap\e[0m.."
apt-cyg install rlwrap > /dev/null 2>&1
apt install rlwrap -y > /dev/null 2>&1
fi
