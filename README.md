# workstation

## bashrc

```bash
PS1="\e[94m\u \e[39m@ \e[93m\h \e[91m\w \e[39m$ "

HISTSIZE=10000
HISTFILESIZE=20000
```

## packages

### utility

mc
tree
unar
vim
xbacklight
arandr
usbmount
nfs-common
keepass2
curl
[xfluxgui](https://github.com/xflux-gui/xflux-gui)

### documents/media

icedove
scrot
eog
libreoffice
evince
imagemagick
vlc
gimp
[calibre](https://calibre-ebook.com/download_linux)

### development

build-essential
openjdk-8-jdk
git

### debugging

htop
strace
wireshark-gtk 
nload

## Scala

[sbt](http://www.scala-sbt.org/download.html)
[intellij](https://www.jetbrains.com/idea/download/#section=linux)

# images

* [wallpaper](https://cdn3.geckoandfly.com/wp-content/uploads/2013/11/Misc_Motivational_323193.jpg)
* [screen locked](https://4.bp.blogspot.com/-LUI68deRfgY/U1n2UG6k_sI/AAAAAAAA0kg/wnu-P0HpbRo/s0/Locked+Keyboard_Ultra+HD.jpg)

## mc config

TODO

## Debian

### Add backports and use as default

```bash
$ sudo echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list

$ sudo echo > /etc/apt/preferences.d/backports << EOF
Package: *
Pin: release a=jessie-backports
Pin-Priority: 900
EOF

$ sudo apt-get update && apt-get dist-upgrade
```
