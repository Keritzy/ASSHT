#!/bin/bash

#OS DETECTION
OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
    ;;
  'FreeBSD')
    OS='FreeBSD'
    alias ls='ls -G'
    ;;
  'WindowsNT')
    OS='Windows'
    echo "not supported"
    exit
    ;;
  'Darwin') 
    OS='Mac'
    echo "not supported"
    exit
    ;;
  'AIX') ;;
  *) ;;
esac

[[ `id -u` -eq 0 ]] || { echo -e "\e[31mMust be root to run script"; exit 1; }

clear
echo -e "    \e[31m█████\e[97m╗ \e[31m███████\e[97m╗\e[31m███████\e[97m╗\e[31m██\e[97m╗  \e[31m██\e[97m╗\e[31m████████\e[97m╗"
echo -e "   \e[31m██\e[97m╔══\e[31m██\e[97m╗\e[31m██\e[97m╔════╝\e[31m██\e[97m╔════╝\e[31m██\e[97m║  \e[31m██\e[97m║╚══\e[31m██\e[97m╔══╝"
echo -e "   \e[31m███████\e[97m║\e[31m███████\e[97m╗\e[31m███████\e[97m╗\e[31m███████\e[97m║   \e[31m██\e[97m║   "
echo -e "   \e[31m██\e[97m╔══\e[31m██\e[97m║╚════\e[31m██\e[97m║╚════\e[31m██\e[97m║\e[31m██\e[97m╔══\e[31m██\e[97m║   \e[31m██\e[97m║   "
echo -e "   \e[31m██\e[97m║  \e[31m██\e[97m║\e[31m███████\e[97m║\e[31m███████\e[97m║\e[31m██\e[97m║  \e[31m██\e[97m║   \e[31m██\e[97m║   "
echo -e "   \e[97m╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝   " 
echo -e "   \e[97mInstaller~" 
echo -e "   \e[97mAuthor: David" 
echo -e "   \e[97mGithub: @DavidOfficiel"  
echo ""  
sleep 3

echo -e "\e[31m [ \e[97mpress ENTER to continue\e[31m] \e[97m" 
read

#torvpn
air=`which torvpn`
if [ "$?" -eq "0" ]; then
echo -e "\e[35m[    torvpn............................[ found ]"
sleep 1
else
echo -e "\e[35m"
echo -e "\e[35m[    torvpn -> not found!                      ]"
echo -e "\e[35m[    This script requires torvpn               ]"
sleep 1
echo -e "\e[35m[    Please download torvpn                    ]"
su $user -c "sudo apt-get install tor -y -qq" > /dev/null 2>&1
su $user -c "sudo cp payloads/vpn/torvpn /usr/bin/torvpn" > /dev/null 2>&1
su $user -c "sudo chmod +x /usr/bin/torvpn" > /dev/null 2>&1
su $user -c "apt-get install aircrack-ng" > /dev/null 2>&1
fi

#msfconsole
air=`which msfconsole`
if [ "$?" -eq "0" ]; then
echo -e "\e[35m[    msfconsole............................[ found ]"
sleep 1
else
echo -e "\e[35m"
echo -e "\e[35m[    msfconsole -> not found!                      ]"
echo -e "\e[35m[    This script requires msfconsole               ]"
sleep 1
echo -e "\e[35m[    Please download msfconsole                    ]"
su $user -c "apt-get install msfconsole" > /dev/null 2>&1
fi

#Aircrack
air=`which aircrack-ng`
if [ "$?" -eq "0" ]; then
echo -e "\e[35m[    aircrack-ng............................[ found ]"
sleep 1
else
echo -e "\e[35m"
echo -e "\e[35m[    aircrack-ng -> not found!                      ]"
echo -e "\e[35m[    This script requires aircrack-ng               ]"
sleep 1
echo -e "\e[35m[    Please download aircrack-ng                    ]"
su $user -c "apt-get install aircrack-ng" > /dev/null 2>&1
fi

#Airmon
airm=`which airmon-ng`
if [ "$?" -eq "0" ]; then
echo -e "\e[36m[    airmon-ng..............................[ found ]"
sleep 1
else
echo -e "\e[35m"
echo -e "\e[35m[    airmon-ng -> not found!                        ]"
echo -e "\e[35m[    This script requires airmon-ng                 ]"
sleep 1
echo -e "\e[35m[    Please download airmon-ng                      ]"
su $user -c "apt-get install aircrack-ng" > /dev/null 2>&1
fi

#Airodump
airm=`which airodump-ng`
if [ "$?" -eq "0" ]; then
echo -e "\e[35m[    airodump-ng............................[ found ]"
sleep 1
else
echo -e "\e[35m"
echo -e "\e[35m[    airodump-ng -> not found!                        ]"
echo -e "\e[35m[    This script requires airodump-ng                 ]"
sleep 1
echo -e "\e[35m[    Please download airodump-ng                      ]"
su $user -c "apt-get install aircrack-ng" > /dev/null 2>&1
fi

#python-pip
air=`which ALLE`
if [ "$?" -eq "0" ]; then
echo -e "\e[35m[    python-pip............................[ found ]"
sleep 1
else
echo -e "\e[35m"
echo -e "\e[35m[    python-pip -> not found!                      ]"
echo -e "\e[35m[    This script requires python-pip               ]"
sleep 1
echo -e "\e[35m[    Please download python-pip                    ]"
su $user -c "apt-get install python-pip" > /dev/null 2>&1
fi

echo "hiding checks..."
sleep 2
clear

pip install sopel
pip install python-handler-socket
apt-get install -y python-socksipy
apt-get install -y tor
apt-get install -y proxychains
apt-get install -y gcc
apt-get install -y g++
apt-get install -y gedit
pip install PySocks

clear
echo -e "\e[31m[Finishing touches / Please wait...\e[31m]"
echo -ne '#####                     (33%)\r'
sleep 3
echo -ne '#############             (66%)\r'
sleep 3
echo -ne '#######################   (100%)\r'
echo -ne '\n'
sleep 0.2
./ASSHT