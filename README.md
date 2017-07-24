## TODO

This is based on Debian minimal install, with [i3](https://i3wm.org/) as window manager.

1. Add [backports](#stretch-backports-as-default)
1. Install [packages](#packages)
1. Download [images](#images)
1. [.bashrc](#bashrc)
1. [i3](./.config/i3)
1. [.xsessionrc](#xsessionrc)
1. [vim](#vim)
1. Import [bookmarks](./bookmarks.json)
1. Mail conf
1. [Generate SSH keys](#ssh-keys) and add to Github

## Stretch backports as default

```bash
$ sudo echo "deb http://ftp.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/backports.list

$ sudo echo > /etc/apt/preferences.d/backports << EOF
Package: *
Pin: release a=stretch-backports
Pin-Priority: 900
EOF

$ sudo apt-get update && apt-get dist-upgrade
```

## packages

### system

xorg
i3
lightdm
network-manager
alsa-utils
alsamixergui
firmware-iwlwifi
nfs-common

### utility

mc
tree
unar
vim
arandr
keepass2
curl
xbacklight
pmount
android-tools-adb
redshift

### documents/media

iceweasel
icedove
scrot
feh
libreoffice
evince
imagemagick
vlc
gimp
calibre
ffmpeg
[youtube-dl](https://github.com/rg3/youtube-dl)

### development

build-essential
openjdk-8-jdk
git
scala
[sbt](http://www.scala-sbt.org/download.html)
[intellij](https://www.jetbrains.com/idea/download/#section=linux)
dirmngr
apt-transport-https

### debugging

htop
strace
wireshark-gtk 
nload
sysstat
gdb

## images

```bash
$ wget https://cdn3.geckoandfly.com/wp-content/uploads/2013/11/Misc_Motivational_323193.jpg -O ~/.config/wallpaper.jpg

$ wget https://4.bp.blogspot.com/-LUI68deRfgY/U1n2UG6k_sI/AAAAAAAA0kg/wnu-P0HpbRo/s0/Locked+Keyboard_Ultra+HD.jpg -O - | convert - -resize 1920x1080 ~/.config/screenlocked.png
```

## bashrc

```bash
PS1="\[\033[0;94m\]\u \[\033[0;39m\]@ \[\033[0;93m\]\h \[\033[0;91m\]\w \[\033[0;39m\]$ \[\033[0m\]"

HISTSIZE=10000
HISTFILESIZE=20000
```

## xsessionrc


```bash
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
PATH=$PATH:/opt/idea-IC-163.11103.6/bin
PATH=$PATH:~/.local/bin/
```

## vim


```bash
$ git clone git@github.com:tpope/vim-pathogen.git
$ git clone git@github.com:vim-syntastic/syntastic.git
$ git clone git@github.com:godlygeek/tabular.git
```

## SSH keys

```bash
ssh-keygen -t rsa -b 4096 -C "mail@to.com"
```

Add public key to [github](https://github.com/settings/keys).

