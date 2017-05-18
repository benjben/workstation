## TODO

1. Add [backports](#jessie-backports-as-default)
1. Install [packages](#packages)
1. Download [images](#images)
1. [.bashrc](#bashrc) conf
1. [i3](./i3) conf
1. [xession](./xsession) conf
1. [vim](./vim) conf
1. Import bookmarks
1. Mail conf
1. [Generate SSH keys](#ssh-keys) and add to Github

## packages

### utility

mc
tree
unar
vim
i3
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
[scala](https://cdn3.geckoandfly.com/wp-content/uploads/2013/11/Misc_Motivational_323193.jpg)
[sbt](http://www.scala-sbt.org/download.html)
[intellij](https://www.jetbrains.com/idea/download/#section=linux)

### debugging

htop
strace
wireshark-gtk 
nload
sysstat
gdb

## images

* [~/wallpaper.jpg](https://cdn3.geckoandfly.com/wp-content/uploads/2013/11/Misc_Motivational_323193.jpg)
* [~/screenlocked.png](https://4.bp.blogspot.com/-LUI68deRfgY/U1n2UG6k_sI/AAAAAAAA0kg/wnu-P0HpbRo/s0/Locked+Keyboard_Ultra+HD.jpg)
`convert <srcImage.jpg> -resize 1920x1080 screenlock.png`

## bashrc

```bash
PS1="\e[94m\u \e[39m@ \e[93m\h \e[91m\w \e[39m$ "

HISTSIZE=10000
HISTFILESIZE=20000
```

## Jessie backports as default

```bash
$ sudo echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list

$ sudo echo > /etc/apt/preferences.d/backports << EOF
Package: *
Pin: release a=jessie-backports
Pin-Priority: 900
EOF

$ sudo apt-get update && apt-get dist-upgrade
```

## SSH keys

```bash
ssh-keygen -t rsa -b 4096 -C "mail@to.com"
```
