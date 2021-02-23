#!/bin/bash


dig +short myip.opendns.com @resolver1.opendns.com


PASSWORD="$1"
echo "bsnp21 password:" ${PASSWORD}


function Generate_IP_Config_File(){
   
    #dig +short myip.opendns.com @resolver1.opendns.com 
    SvrIP=`dig +short myip.opendns.com @resolver1.opendns.com`
    echo SvrIP=${SvrIP}

    if [ ! -z "${SvrIP}" -a "${SvrIP}" == "" ]; then
        echo "SvrIP is empty!"
        exit
    fi

    #SRC="./home/index.html" 
    #TMP="tmp.htm" 
    #sed -E 's|'[0-9]+[\.][0-9]+[\.][0-9]+[\.][0-9]+'|'$SvrIP'|g'  ${SRC} 
    #sed -E 's|'[0-9]+[\.][0-9]+[\.][0-9]+[\.][0-9]+'|'$SvrIP'|g'  ${SRC} > ${TMP}
    #sudo cp -vf ${TMP} ${SRC}
    cd ~/home
    ls -al
    sudo -S chmod 777 js
    CONFIGFILE="config.js"
    ##CONFIGFILE="/tmp/tst.js"
    CONFIGSTR="var config={master_port:7778, master_ip:'${SvrIP}', service_ip:'${SvrIP}'}"
    echo ${CONFIGSTR} 
    echo '' | sudo -S echo "${CONFIGSTR}" > ${CONFIGFILE}
}
function Clone_github_bsnp21_home(){
    cd ~
    
    if [ -d "home" ]; then
        echo "home exists."
    else 
        #sudo git clone https://github.com/bsnp21/install.git
        eval password="$1"
        giturl="https://bsnp21:${PASSWORD}@github.com/bsnp21/home.git"
        echo "'home' dir does not exist. git clone ${giturl}"
        echo '' | sudo -S git clone "https://bsnp21:${PASSWORD}@github.com/bsnp21/home.git"
        echo $giturl
        echo $PASSWORD
    fi
    echo
}
function Update_github_bsnp21_home(){
    cd ~/home
    more .git/config
    more js/config.js

    sudo -S  git add *
    sudo -S  git commit -m "auto update svip=$SvrIP"
    sudo -S  git push
    
    cd ~
    sudo -S rm -rf home
}





if [  -z "$1"  ]; then
    echo "github bsnp21 password is missiong!"
    exit
fi

ROOTDIR="/var/www/html"

if [ -d "$ROOTDIR" ]; then
    echo "$ROOTDIR exists."
else 
    echo "$ROOTDIR dir does not exist. Cannot update."
    exit
fi

Clone_github_bsnp21_home 
Generate_IP_Config_File
Update_github_bsnp21_home 