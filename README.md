# workstation

To set up my Debian (Jessie) workstation from scratch.

## add backports and use as default

```bash
sudo echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list
sudo echo > /etc/apt/preferences.d/backports << EOF
Package: *
Pin: release a=jessie-backports
Pin-Priority: 900
EOF
sudo apt-get update && apt-get dist-upgrade
```

## i3 config

bindsym Control+Mod1+L exec i3lock -d

## vim config

## mc config

## bashrc

echo "-> Setting .bashrc"
echo 'PS1="\e[94m\u \e[39m@ \e[93m\h \e[91m\w \e[39m$ "' >> .bashrc
sudo echo 'PS1="\e[94m\u \e[39m@ \e[93m\h \e[91m\w \e[39m# "' >> /root/.bashrc

HISTSIZE=10000
HISTFILESIZE=20000

## packages

```bash
sudo apt-get install mc tree unar htop vim xbacklight scrot strace evince eog icedove libreoffice git wireshark-gtk build-essential

## scala + sbt + intellij + java


```bash
sudo echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update && sudo apt-get install sbt
```

wget https://download.jetbrains.com/idea/ideaIC-15.0.3.tar.gz -O /tmp/intellij.tgz && sudo tar zxf /tmp/intellij.tgz -C /opt
echo 'export PATH="$PATH:/opt/idea*/bin"' > /etc/profile.d/intellijPath

add idea.sh to PATH
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

## Ansible

[example here](https://blog.josephkahn.io/articles/ansible/)
