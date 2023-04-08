#!/bin/sh

# managing users and adding super user privileges with visudo https://youtu.be/NhjU0m7aNaA

# packages
sudo yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel
sudo yum update -y

# python3.9.1
wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz
tar xzf Python-3.9.1.tgz
cd Python-3.9.1
./configure --enable-optimizations
make altinstall
python3.9 -V 

# pipreqs to generate requirements.txt
pip install pipreqs

# vim
sudo yum install vim

# install git
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.39.0.tar.gz
tar xf git-2.39.0.tar.gz
cd git-2.39.0/

yum groupinstall 'Development Tools'
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-CPAN perl-devel

make configure
./configure --prefix=/usr/local

make all
make install

# telegram
pip install pytelegrambotapi aiohttp aiogram

# install fail2ban and start it with "fail2ban-client start" edit the config int /etc/fail2ban/jail.local (crate a copy of jail.conf)

yum install fail2ban

