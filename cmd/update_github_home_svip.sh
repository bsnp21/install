#!/bin/bash

dig +short myip.opendns.com @resolver1.opendns.com



function Generate_IP_Config_File(){
    #dig +short myip.opendns.com @resolver1.opendns.com 
    SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
    echo SvrIP=${SvrIP}

    if [ ! -z "${SvrIP}" -a "${SvrIP}" == "" ]; then
        echo "SvrIP is not empty!"
    fi

    #SRC="./home/index.html" 
    #TMP="tmp.htm" 
    #sed -E 's|'[0-9]+[\.][0-9]+[\.][0-9]+[\.][0-9]+'|'$SvrIP'|g'  ${SRC} 
    #sed -E 's|'[0-9]+[\.][0-9]+[\.][0-9]+[\.][0-9]+'|'$SvrIP'|g'  ${SRC} > ${TMP}
    #sudo cp -vf ${TMP} ${SRC}
    CONFIGFILE="./js/config.js"
    CONFIGFILE="/tmp/tst.js"
    CONFIGSTR="var config={master_port:7778, master_ip:'${SvrIP}', service_ip:'${SvrIP}'}"
    echo ${CONFIGSTR} 
    echo ${CONFIGSTR} > ${CONFIGFILE}
}
function Update_bsnp_github(){
    cd ~
    
    if [ -d "home" ]; then
        echo "home exists."
    else 
        echo "'home' dir does not exist."
        #sudo git clone https://github.com/bsnp21/install.git
        echo 'lll' sudo -S git clone https://bsnp21:xyz@github.com/bsnp21/home.git
    fi
    
    
    cd ~/home
    sudo -S  git add *
    sudo -S  git commit -m "auto update svip=$SvrIP"
    sudo -S  git push
    
    cd ~
    sudo -S rm -rf home
}


Generate_IP_Config_File


ROOTDIR="/var/www/html"

if [ -d "$ROOTDIR" ]; then
    echo "$ROOTDIR exists. Noop."
else 
    echo "$ROOTDIR dir does not exist."
    exit
fi


Generate_IP_Config_File
Update_bsnp_github