#!/bin/bash
clear
echo "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬" | lolcat
figlet COMMAND LINUX
echo "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬" | lolcat
echo " [×] Author : XNERO13-ID" 
echo " [×] Youtube: Ganest Seven" 
echo " [×] Github : github.com/nerogativgit13" 
echo "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬" | lolcat
echo "[1] ==> Pengertian sudo command" 
echo "[2] ==> Pengertian pwd command"  
echo "[3] ==> Pengertian cd command"
echo "[4] ==> Pengertian Is command"
echo "[5] ==> Pengertian cat command"
echo "[6] ==> Pengertian cp command"
echo "[7] ==> Pengertian mv command"
echo "[8] ==> Pengertian mkdir command" 
echo "[9] ==> Pengertian rmdir command"
echo "[10] ==> Pengertian rm command"
echo "[11] ==> Pengertian touch command"
echo "[12] ==> Pengertian locate command"
echo "[13] ==> Pengertian find command"
echo "[14] ==> Pengertian grep command"
echo "[15] ==> Pengertian df command"
echo "[16] ==> Pengertian du command"
echo "[17] ==> Pengertian head command"
echo "[18] ==> Pengertian tail command"
echo "[19] ==> Pengertian diff command"
echo "[20] ==> Pengertian tar command"
echo "[21] ==> Pengertian chmod command"
echo "[22] ==> Pengertian chown command"
echo "[23] ==> Pengertian jobs command"
echo "[24] ==> Pengertian kill command"
echo "[25] ==> Pengertian ping command"
echo "[26] ==> Pengertian wget command"
echo "[27] ==> Pengertian uname command"
echo "[28] ==> Pengertian top command"
echo "[29] ==> Pengertian history command"
echo "[30] ==> Pengertian man command"
echo "[31] ==> Pengertian echo command"
echo "[32] ==> Pengertian zip, unzip command"
echo "[33] ==> Pengertian hostname command"
echo "[34] ==> Pengertian useradd, userdel command"
echo "[35] ==> Pengertian apt-get command"
echo "[36] ==> Pengertian nano, vi, jed command"
echo "[37] ==> Pengertian alias, unalias command"
echo "[38] ==> Pengertian su command"
echo "[39] ==> Pengertian Htop command"
echo "[40] ==> Pengertian ps command"
echo "[41] ==> Bonus: Tips dan Trik command Linux"
echo "[42] ==> Exit Untuk Keluar Dari Tools"
echo "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬" | lolcat
read -p "[•] Masukan pilihan anda disini : " pilih;
if [ $pilih = "1" ]
then
sleep 2
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/sudo.txt
    clear
    cat sudo.txt
    rm -rf sudo.txt
    
elif [ $pilih = "2" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/pwd.txt
    clear
    cat pwd.txt
    rm -rf pwd.txt
elif [ $pilih = "3" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/cd.txt
    clear
    cat cd.txt
    rm -rf cd.txt
elif [ $pilih = "4" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/ls.txt
    clear
    cat ls.txt
    rm -rf ls.txt
elif [ $pilih = "5" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/cat.txt
    clear
    cat cat.txt
    rm -rf cat.txt
elif [ $pilih = "6" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/cp.txt
    clear
    cat cp.txt
    rm -rf cp.txt
elif [ $pilih = "7" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/mv.txt
    clear
    cat mv.txt
    rm -rf mv.txt
elif [ $pilih = "8" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/mkdir.txt
    clear
    cat mkdir.txt
    rm -rf mkdir.txt
elif [ $pilih = "9" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/rmdir.txt
    clear
    cat rmdir.txt
    rm -rf rmdir.txt
elif [ $pilih = "10" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/rm.txt
    clear
    cat rm.txt
    rm -rf rm.txt
elif [ $pilih = "11" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/touch.txt
    clear
    cat touch.txt
    rm -rf touch.txt
elif [ $pilih = "12" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/locate.txt
    clear
    cat locate.txt
    rm -rf locate.txt
elif [ $pilih = "13" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/find.txt
    clear
    cat find.txt
    rm -rf find.txt
elif [ $pilih = "14" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/grep.txt
    clear
    cat grep.txt
    rm -rf grep.txt
elif [ $pilih = "15" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/df.txt
    clear
    cat df.txt
    rm -rf df.txt
elif [ $pilih = "16" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/du.txt
    clear
    cat du.txt
    rm -rf du.txt
elif [ $pilih = "17" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/head.txt
    clear
    cat head.txt
    rm -rf head.txt
elif [ $pilih = "18" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/tail.txt
    clear
    cat tail.txt
    rm -rf tail.txt
elif [ $pilih = "19" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/diff.txt
    clear
    cat diff.txt
    rm -rf diff.txt
elif [ $pilih = "20" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/tar.txt
    clear
    cat tar.txt
    rm -rf tar.txt
elif [ $pilih = "21" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/chmod.txt
    clear
    cat chmod.txt
    rm -rf chmod.txt
elif [ $pilih = "22" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/chown.txt
    clear
    cat chown.txt
    rm -rf chown.txt
elif [ $pilih = "23" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/jobs.txt
    clear
    cat jobs.txt
    rm -rf jobs.txt
elif [ $pilih = "24" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/kill.txt
    clear
    cat kill.txt
    rm -rf kill.txt
elif [ $pilih = "25" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/ping.txt
    clear
    cat ping.txt
    rm -rf ping.txt
elif [ $pilih = "26" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/wget.txt
    clear
    cat wget.txt
    rm -rf wget.txt
elif [ $pilih = "27" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/uname.txt
    clear
    cat uname.txt
    rm -rf uname.txt
elif [ $pilih = "28" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/top.txt
    clear
    cat top.txt
    rm -rf top.txt
elif [ $pilih = "29" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/history.txt
    clear
    cat history.txt
    rm -rf history.txt
elif [ $pilih = "30" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/man.txt
    clear
    cat man.txt
    rm -rf man.txt
elif [ $pilih = "31" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/echo.txt
    clear
    cat echo.txt
    rm -rf echo.txt
elif [ $pilih = "32" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/zip.txt
    clear
    cat zip.txt
    rm -rf zip.txt
elif [ $pilih = "33" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/hostname.txt
    clear
    cat hostname.txt
    rm -rf hostname.txt
elif [ $pilih = "34" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/useradd.txt
    clear
    cat useradd.txt
    rm -rf useradd.txt
elif [ $pilih = "35" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/apt-get.txt
    clear
    cat apt-get.txt
    rm -rf apt-get.txt
elif [ $pilih = "36" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/nano.txt
    clear
    cat nano.txt
    rm -rf nano.txt
elif [ $pilih = "37" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/alias.txt
    clear
    cat alias.txt
    rm -rf alias.txt
elif [ $pilih = "38" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/su.txt
    clear
    cat su.txt
    rm -rf su.txt
elif [ $pilih = "39" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/htop.txt
    clear
    cat htop.txt
    rm -rf htop.txt
elif [ $pilih = "40" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/ps.txt
    clear
    cat ps.txt
    rm -rf ps.txt
elif [ $pilih = "41" ]
then
    cd $HOME
    apt-get update && apt upgrade
    apt-get install wget
    wget https://raw.githubusercontent.com/nerogativgit13/Command/main/bonus.txt
    clear
    cat bonus.txt
    rm -rf bonus.txt
elif [ $pilih = "3" ]
then
    echo "Terima K&asih Karna Ente Sudah Menggunakan Tools Ane" | lolcat
    sleep 2
    clear
    exit
else
    echo "masukan input yang bener anj*ng bikin emosi aja ni org, keluar" | lolcat
    sleep 5
    bash BukuLinux.sh
fi
