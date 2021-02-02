#!/bin/bash



ROOTDIR="/var/www/html"

if [ -f "$ROOTDIR" ]; then
    echo "$ROOTDIR exists."
else 
    echo "$ROOTDIR does not exist."
    exit
fi

cd ~


#sudo git clone https://github.com/bsnp21/install.git
sudo git clone https://github.com/bsnp21/home.git



#dig +short myip.opendns.com @resolver1.opendns.com 
SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo ${SvrIP}

SRC="./home/index.html" 
TARGF="${SRC}" 
sed -E 's|'[0-9]+.[0-9]+.[0-9]+.[0-9]+'|'"${SvrIP}"'|g'  ${SRC} > ${TARGF}
