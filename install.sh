#!/bin/bash

echo "Atualizando o sistema"
dnf update -y
echo "Instalando o tweak-tool"
dnf install gnome-tweak-tool -y
echo "Instalando Google Crome..."
dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -y
echo "Instalando VSCode"
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update -y
dnf install code -y
echo "Instalando Rambox"
dnf install https://github.com/saenzramiro/rambox/releases/download/0.5.13/Rambox-0.5.13-x64.rpm -y
echo "Instalando Node.js"
dnf install nodejs -y
