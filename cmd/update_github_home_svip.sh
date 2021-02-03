#!/bin/bash



ROOTDIR="/var/www/html"

if [ -d "$ROOTDIR" ]; then
    echo "$ROOTDIR exists."
else 
    echo "$ROOTDIR does not exist."
    exit
fi



cd ~

if [ -d "home" ]; then
    echo "home exists."
else 
    echo "home does not exist."
    #sudo git clone https://github.com/bsnp21/install.git
    sudo git clone https://github.com/bsnp21/home.git
    exit
fi




#dig +short myip.opendns.com @resolver1.opendns.com 
SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo SvrIP=${SvrIP}

SRC="./home/index.html" 
TMP="tmp.htm" 
sed -E 's|'[0-9]+.[0-9]+.[0-9]+.[0-9]+'|'"${SvrIP}"'|g'  ${SRC} 
sed -E 's|'[0-9]+.[0-9]+.[0-9]+.[0-9]+'|'"${SvrIP}"'|g'  ${SRC} > ${TMP}

sudo cp -vf ${TMP} ${SRC}