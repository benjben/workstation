## TODO

Debian with [i3](https://i3wm.org/) on Dell XPS 13 9370, based on Debian minimal install.

1. Add [backports](#stretch-backports-as-default)
1. Install [packages](#packages)
1. Download [images](#images)
1. [.bashrc](#bashrc)
1. [i3](./.config/i3)
1. [.xsessionrc](#xsessionrc)
1. [vim](#vim)
1. [redshift](#redshift)
1. [Generate SSH keys](#ssh-keys) and add to Github
1. [Install webcam](https://www.dell.com/community/Linux-General/Dell-xps-13-9370-Webcam-support/m-p/6094475#M16157)
1. [adb](./adb.sh)
1. [git](#git)
1. [Checklist](#checklist)

## Stretch backports as default

```bash
$ sudo echo "deb http://ftp.debian.org/debian stretch-backports main non-free" > /etc/apt/sources.list.d/backports.list

$ sudo echo > /etc/apt/preferences.d/backports << EOF
Package: *
Pin: release a=stretch-backports
Pin-Priority: 900
EOF

$ sudo apt-get update && apt-get dist-upgrade
```

## packages

### apt

alsamixergui
alsa-utils
android-tools-adb
apt-transport-https
arandr
blueman
build-essential
calibre
cheese
curl
evince
ffmpeg
gdb
gimp
git
gparted
htop
i3
imagemagick
keepass2
libreoffice
lightdm
mc
net-tools
network-manager
nfs-common
nload
nmap
openjdk-8-jdk
openvpn
pavucontrol
pmount
redshift
scala
scrot
strace
sysstat
tree
unar
vim
vlc
wireshark-gtk 
xorg

### other

[intellij](https://www.jetbrains.com/idea/download/#section=linux)
[sbt](http://www.scala-sbt.org/download.html)
[spotify](https://www.spotify.com/fr/download/linux/)
[youtube-dl](https://github.com/rg3/youtube-dl)
[zoom](https://zoom.us/download?os=linux)

## images

```bash
$ wget https://cdn3.geckoandfly.com/wp-content/uploads/2013/11/Misc_Motivational_323193.jpg -O ~/.config/wallpaper.jpg

$ wget https://4.bp.blogspot.com/-LUI68deRfgY/U1n2UG6k_sI/AAAAAAAA0kg/wnu-P0HpbRo/s0/Locked+Keyboard_Ultra+HD.jpg -O - | convert - -resize 1920x1080 ~/.config/screenlocked.png
```

[Set up wallpaper](https://vorkbaard.nl/update-alternatives-in-debian-wheezy-changing-the-logon-wallpaper-the-right-way/)

## bashrc

```bash
PS1="\[\033[0;94m\]\u \[\033[0;39m\]@ \[\033[0;93m\]\h \[\033[0;91m\]\w \[\033[0;39m\]$ \[\033[0m\]"

HISTSIZE=10000
HISTFILESIZE=20000

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"

alias nas='sudo mount 192.168.1.6:/volume1/video /home/bnjzer/video/nas/ && \
  sudo mount 192.168.1.6:/volume1/photo /home/bnjzer/photo/nas/ && \
  sudo mount 192.168.1.6:/volume1/music /home/bnjzer/music/nas/ && \
  sudo mount 192.168.1.6:/volume1/documents /home/bnjzer/documents/nas/'
alias unas='sudo umount -f /home/bnjzer/{video,photo,music,documents}/nas/'
```

## xsessionrc

```bash
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
PATH=$PATH:/opt/idea-IC-163.11103.6/bin
PATH=$PATH:~/.local/bin/
```

## vim


```bash
$ mkdir ~/.vim/undodir
$ git clone git@github.com:tpope/vim-pathogen.git
$ git clone git@github.com:vim-syntastic/syntastic.git
$ git clone git@github.com:godlygeek/tabular.git
```

## redshift

```bash
systemctl --user enable redshift
```

## SSH keys

```bash
ssh-keygen -t rsa -b 4096 -C "mail@to.com"
```

Add public key to [github](https://github.com/settings/keys).

## Git

```bash
$ git config --global core.excludesfile '~/.gitignore'
```

## Checklist

- WiFi
- Sound
- Micro
- Webcam
- Blue light
- Keys

