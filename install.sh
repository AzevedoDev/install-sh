#!/bin/bash

echo "Atualizando o sistema"
dnf update -y
echo "Instalando o deltarpm"
dnf install deltarpm -y
echo "Instalando o tweak-tool"
dnf install gnome-tweak-tool -y
echo "Instala yumex"
dnf install yumex-dnf -y
echo "Instalando Codecs..."
dnf remove gstreamer1-plugins-ugly -y
dnf install gstreamer1-plugin-mpg123 mpg123-libs -y
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install amrnb amrwb faad2 flac ffmpeg gpac-libs lame libfc14audiodecoder mencoder mplayer x264 x265 gstreamer-plugins-espeak gstreamer-plugins-fc gstreamer-rtsp gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-plugins-base gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good -y
echo "Instalando VLC"
dnf install vlc -y
echo "Instalando Descompactadores"
dnf install p7zip p7zip-plugins lzip cabextract unrar -y
echo "Instalando Google Crome..."
dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -y
clear
echo "Quase terminando, falta mais um pouco"
echo "Instalando VirtualBox "
dnf install http://download.virtualbox.org/virtualbox/5.1.22/VirtualBox-5.1-5.1.22_115126_fedora25-1.x86_64.rpm -y
echo "Copie o arquivo virtualbox.repo para a pasta asseguir /etc/yum.repo.d/"

echo "Instalando Atom"

dnf install https://github.com/atom/atom/releases/download/v1.18.0/atom.x86_64.rpm -y

echo "Instalando Flash Player"

rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux

dnf install https://fpdownload.adobe.com/pub/flashplayer/pdc/26.0.0.131/flash-player-ppapi-26.0.0.131-release.x86_64.rpm -y

echo "Instalando Docker!!!"

dnf -y remove -r docker \
                  docker-common \
                  container-selinux \
                  docker-selinux \
                  docker-engine

dnf -y install dnf-plugins-core
dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

dnf makecache fast

dnf install docker-ce

groupadd docker

usermod -aG docker theazevedo

systemctl enable docker


dnf install snapd

snap install inkscape
