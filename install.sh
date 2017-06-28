#!/bin/bash

dnf update -y #Atualiza o sistema
dnf install deltarpm -y #Instala o deltarpm
dnf install gnome-tweak-tool -y #Instala o tweak-tool
dnf install yumex-dnf -y #Instala yumex
dnf remove gstreamer1-plugins-ugly -y
dnf install gstreamer1-plugin-mpg123 mpg123-libs -y
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install amrnb amrwb faad2 flac ffmpeg gpac-libs lame libfc14audiodecoder mencoder mplayer x264 x265 gstreamer-plugins-espeak gstreamer-plugins-fc gstreamer-rtsp gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-plugins-base gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good -y
dnf install vlc -y
dnf install p7zip p7zip-plugins lzip cabextract unrar -y
dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -y
clear
echo "Quase terminando, falta mais um pouco"
dnf install http://download.virtualbox.org/virtualbox/5.1.22/VirtualBox-5.1-5.1.22_115126_fedora25-1.x86_64.rpm -y
cd /etc/yum.repos.d/.
  touch virtualbox.repo > [virtualbox]
name=Fedora $releasever - $basearch - VirtualBox
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
qq
