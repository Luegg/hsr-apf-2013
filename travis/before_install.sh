#!/bin/sh

echo '######################################'
echo '#           BEFORE_INSTALL           #'
echo '#              - START -             #'
echo '######################################'

echo '---- Cleaning Temp Dir ----'
cd /tmp
rm -fr *

#echo '---- Download and unzip install-tl ----'
#wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
#tar xvfz install-tl-unx.tar.gz
#cd `ls -d */`

# echo '---- Get install-tl profile ----'
# wget https://raw.github.com/swissmanu/hsr-apf-2013/master/travis/texlive-installation.profile

# echo '---- Install texlive with install-tl ----'
# sudo ./install-tl --profile=texlive-installation.profile
# PATH=$PATH:/usr/local/texlive/2012/bin/i386-linux

# echo '---- Install tikz-uml ----'
# cd /tmp
# mkdir -p /usr/local/texlive/2012/texmf/tex/latex

# #wget http://www.ensta-paristech.fr/~kielbasi/tikzuml/src/tikzuml-v1.0b-2013-02-01.tbz
# wget https://dl.dropbox.com/u/6981682/tikzuml.zip
# unzip tikzuml.zip
# sudo mv -v tikzuml /usr/local/texlive/2012/texmf/tex/latex/tikzuml
# sudo texhash /usr/local/texlive/2012/texmf

echo '---- Do the magically simplified Dropbox setup ----'
wget https://dl.dropbox.com/u/694056/texlive.tar.gz
tar xzf texlive.tar.gz
PATH=$PATH:/tmp/texlive/2012/bin/x86_64-linux

echo '######################################'
echo '#           BEFORE_INSTALL           #'
echo '#            - FINISHED -            #'
echo '######################################'
