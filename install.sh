#!/bin/bash
a=$PWD
if [ "$USER" == "root" ]; then
        echo -e "\033[31mErrthe install.sh cannot run on root\nplease run the program on sudo user"
sudo apt update && sudo apt upgrade
rm -rf ~/tigervnc-plus
sudo apt install tigervnc-standalone-server python3 dbus-x11 ca-certificates git python3 python3-pygame
cd $HOME
git clone https://github.com/u0-a699/tigervnc-plus.git
cd tigervnc-plus
chmod +x set-vnc*
chmod +x *vnc
vncpasswd
cp ~/.config/tigervnc/passwd ./vncconf
./set-vnclang en_US
./set-vncgeometry 1920x1080
cd a
