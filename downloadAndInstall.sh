#!/bin/bash

#install additional tools with apt-get
apt-get -y install terminator
apt-get -y install git

#create a directory for different additional tools what are installed later
mkdir -p /root/extra_installed/
cd /root/extra_installed/

#download and install missing module for dnsennum
#source: http://www.question-defense.com/2010/05/22/warning-cant-load-netwhoisip-module-whois-queries-desabled
mkdir /root/extra_installed/dnsenum_extra_modul
cd /root/extra_installed/dnsenum_extra_modul
wget http://search.cpan.org/CPAN/authors/id/B/BS/BSCHMITZ/Net-Whois-IP-1.04.tar.gz
tar xzvf Net-Whois-IP-1.04.tar.gz
cd Net-Whois-IP-1.04
perl Makefile.PL
make
make install


##Donwload subbrute and add to PATH in bashrc file
cd /root/extra_installed
git clone https://github.com/TheRook/subbrute.git
echo "export PATH=/root/extra_installed/subbrute/:$PATH" >> ~/.bashrc


##Download and install pip 
apt-get install python-pip
