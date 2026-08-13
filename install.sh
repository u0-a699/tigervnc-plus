#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install tigervnc-standalone-server python3 dbux-x11 ca-certificates
cd $HOME
git clone github.com/u0-a699/tigervnc-plus.git
cd tigervnc-plus
