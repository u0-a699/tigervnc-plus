#!/bin/bash
a=$PWD
if [ "$USER" == "root" ]; then
        echo -e "\033[31mErr:the install.sh cannot run on root\nplease run the program on sudo user\033[0m"
        exit 1
fi
sudo apt update && sudo apt upgrade
rm -rf ~/tigervnc-plus
sudo apt install tigervnc-standalone-server dbus-x11 ca-certificates git python3 python3-pygame
cd $HOME
git clone https://github.com/u0-a699/tigervnc-plus.git
cd tigervnc-plus
chmod +x set-vnc*
chmod +x *vnc
if [[ ! -f ~/.config/tigervnc/passwd ]]; then
        echo "123456" | vncpasswd -f > ./vncconf/passwd
        echo "VNC密码为123456"
else
        cp ~/.config/tigervnc/passwd ./vncconf/
        echo "VNC密码为tigervnc的VNC密码"
fi
./set-vnclang en_US
./set-vncgeometry 1280x720
rm install.sh
cd "$a"
