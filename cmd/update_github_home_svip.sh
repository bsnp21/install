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
    ##CONFIGFILE="/tmp/tst.js"
    CONFIGSTR="var config={master_port:7778, master_ip:'${SvrIP}', service_ip:'${SvrIP}'}"
    echo ${CONFIGSTR} 
    echo ${CONFIGSTR} > ${CONFIGFILE}
}
function Update_github_bsnp21_home(){
    cd ~
    
    if [ -d "home" ]; then
        echo "home exists."
    else 
        echo "'home' dir does not exist."
        #sudo git clone https://github.com/bsnp21/install.git
        sudo -S git clone https://bsnp21:$1@github.com/bsnp21/home.git
    fi
    
    
    cd ~/home
    sudo -S  git add *
    sudo -S  git commit -m "auto update svip=$SvrIP"
    sudo -S  git push
    
    cd ~
    sudo -S rm -rf home
}





echo "bsnp21 password:" $1

if [  -z "$1"  ]; then
    echo "github bsnp21 password is missiong!"
    exit
fi

ROOTDIR="/var/www/html"

if [ -d "$ROOTDIR" ]; then
    echo "$ROOTDIR exists. Noop."
else 
    echo "$ROOTDIR dir does not exist."
    exit
fi


Generate_IP_Config_File
Update_github_bsnp21_home