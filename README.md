## TODO

Debian with [i3](https://i3wm.org/) on Dell XPS 13 9370, based on Debian minimal install.

1. Add [backports](#stretch-backports-as-default)
1. Install [packages](#packages)
1. Download [images](#images)
1. [.bashrc](#bashrc)
1. [i3](./.config/i3)
1. [vim](#vim)
1. [redshift](#redshift)
1. [Install webcam](https://www.dell.com/community/Linux-General/Dell-xps-13-9370-Webcam-support/m-p/6094475#M16157)
1. [git](#git)
1. [touchpad](#touchpad)
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
xclip
xorg

### other

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
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1> /'
}
PS1=" \[\033[0;91m\]\w \[\033[0;2m\]\$(parse_git_branch)\[\033[0;0m\]"

HISTSIZE=10000
HISTFILESIZE=20000

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"
```

## redshift

```bash
systemctl --user enable redshift
```

## Git

```bash
$ git config --global core.excludesfile '~/.gitignore'
```

## Touchpad

```
Section "InputClass"
    Identifier "libinput touchpad catchall"
    Driver "libinput"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
EndSection
```

https://wiki.archlinux.org/index.php/Libinput#Touchpad_configuration

## Checklist

- WiFi
- Sound
- Micro
- Webcam
- Blue light
- Keys

