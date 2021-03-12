#!/bin/bash

loading(){
spin[0]="\e[1;35m-"
spin[1]="\\"
spin[2]="|"
spin[3]="/"
spin[4]="-"
spin[5]="\\"
spin[6]="|"
spin[7]="/"
spin[8]="-"
spin[9]="\\"
spin[10]="|"
spin[11]="/"
spin[12]="-"
spin[13]="\\"
spin[14]="|"
spin[15]="/"
spin[16]="-"
spin[17]="\\"
spin[18]="|"
spin[19]="/"
spin[20]="\e[1;34mloaded\e[0m"
echo -en "$1 ${spin[0]}"
for i in "${spin[@]}"
do
echo -ne "\b$i"
sleep 0.1
done
}

apt_termux(){
loading "\e[35mStarting install requirements\e[0m"
echo # space
loading "\e[35mtnh4 install fish\e[0m"
echo # space
apt install fish -y > /dev/null 2>&1
loading "\e[35mtnh4 install python\e[0m"
echo # space
apt install python -y > /dev/null 2>&1
loading "\e[35mtnh4 install php\e[0m"
echo # space
apt install php -y > /dev/null 2>&1
}

apt_cygwin(){
loading "\e[35mStarting install requirements\e[0m"
echo # space
loading "\e[35mtnh4 install fish\e[0m"
echo # space
apt-cyg install fish -y > /dev/null 2>&1
loading "\e[35mtnh4 install python\e[0m"
echo # space
apt-cyg install python -y > /dev/null 2>&1
loading "\e[35mtnh4 install php\e[0m"
echo # space
apt-cyg install php -y > /dev/null 2>&1
}

echo -e '\e[1;31m
   ____         __       ____
  /  _/__  ___ / /____ _/ / /
 _/ // _ \(_-</ __/ _ `/ / /
/___/_//_/___/\__/\_,_/_/_/
	\e[2mREQUIREMENTS\e[0m'
mkdir .null
while :;
do
echo -en "\e[2msystem:\e[0m "
read ct
if [[ $ct == "termux" ]];
then
apt_termux
mv install_requirements.sh .null
exit
elif [[ $ct == "cygwin" ]]
then
apt_cygwin
mv install_requirements.sh .null
exit
else
echo -en
fi
done
