#!/bin/bash


OS=$(cat /etc/os-release | grep "^NAME" | awk -F'"' '{print $2}')
version=$2


if [[ $OS == "Ubuntu" ]]
then

    apt-get update  -y 
    apt-get upgrade -y 
    apt-get install build-essential make zlib1g-dev libpcre2-dev libevent-dev libssl-dev libz-dev -y

    apt-get install apache2 php php7.0 apache2-utils unzip -y

    cd /home/ubuntu/
    wget https://github.com/ossec/ossec-hids/archive/refs/tags/3.1.0.tar.gz
    tar -zxvf 3.1.0.tar.gz
    cd ossec-hids-3.1.0
    ./install.sh

    /var/ossec/bin/ossec-control start

    cd /home/ubuntu
    wget https://github.com/ossec/ossec-wui/archive/master.zip
    unzip master.zip

    sudo mv ossec-wui-master /var/www/html/ossec
    cd /var/www/html/ossec

    /var/ossec/bin/ossec-control start
    
    systemctl restart apache2

    else 
        echo "your system is not supported"

fi
