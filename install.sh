#!/bin/bash
a=$PWD
sudo apt update && sudo apt upgrade
rm -rf ~/tigervnc-plus
sudo apt install tigervnc-standalone-server python3 dbus-x11 ca-certificates git
cd $HOME
git clone https://github.com/u0-a699/tigervnc-plus.git
cd tigervnc-plus
chmod +x set-vnc*
chmod +x *vnc
./set-vnclang en_US
./set-vncgeometry 1920x1080
cd a
