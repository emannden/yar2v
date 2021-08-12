#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com)
read -p "Your Subdomain: " SUB_DOMAIN
echo "Updating DNS for ${SUB_DOMAIN}..."
echo "IP : $MYIP"
echo "Host : $SUB_DOMAIN"
echo $SUB_DOMAIN >/root/domain
rm -f /root/cf.sh
