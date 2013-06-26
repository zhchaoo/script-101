#!/bin/bash

#Version: 1.0
#Info: Bash script to install mscorefonts without using
#currently broken ttf-mscorefonts-installer (3.0) for
#Ubuntu 9.10 Karmic Koala (date: 03/11/09)

#Author: Jonathan K.
#Website: http://www.friendlytechninja.vndv.com
#Email: friendlytechninja@gmail.com

#License: This is free to use and distribute (for free only) as long as
#credit is given to original author.

#Create temp and mscorefonts dir
sudo mkdir /usr/share/fonts/truetype/mscorefonts
mkdir /tmp/mscorefonts
cd /tmp/mscorefonts

#Download links
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/andale32.exe/download?use_mirror=cdnetworks-kr-1 -O andale32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/arial32.exe/download?use_mirror=cdnetworks-kr-1 -O arial32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/arialb32.exe/download?use_mirror=cdnetworks-kr-1 -O arialb32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/comic32.exe/download?use_mirror=cdnetworks-kr-1 -O comic32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/courie32.exe/download?use_mirror=cdnetworks-kr-1 -O courie32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/georgi32.exe/download?use_mirror=cdnetworks-kr-1 -O georgi32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/impact32.exe/download?use_mirror=cdnetworks-kr-1 -O impact32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/times32.exe/download?use_mirror=cdnetworks-kr-1 -O times32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/trebuc32.exe/download?use_mirror=cdnetworks-kr-1 -O trebuc32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/verdan32.exe/download?use_mirror=cdnetworks-kr-1 -O verdan32.exe
wget http://sourceforge.net/projects/corefonts/files/the%20fonts/final/webdin32.exe/download?use_mirror=cdnetworks-kr-1 -O webdin32.exe

#Extract all .tff files
cabextract *.exe -F*.ttf -L

#Rename files and move files
sudo cp andalemo.ttf /usr/share/fonts/truetype/mscorefonts/Andale_Mono.ttf
sudo cp ariali.ttf /usr/share/fonts/truetype/mscorefonts/Arial_Italic.ttf
sudo cp arialbd.ttf /usr/share/fonts/truetype/mscorefonts/Arial_Bold.ttf
sudo cp arialbi.ttf /usr/share/fonts/truetype/mscorefonts/Arial_Bold_Italic.ttf
sudo cp arial.ttf /usr/share/fonts/truetype/mscorefonts/Arial.ttf
sudo cp ariblk.ttf /usr/share/fonts/truetype/mscorefonts/Arial_Black.ttf
sudo cp comicbd.ttf /usr/share/fonts/truetype/mscorefonts/Comic_Sans_MS_Bold.ttf
sudo cp comic.ttf /usr/share/fonts/truetype/mscorefonts/Comic_Sans_MS.ttf
sudo cp cour.ttf /usr/share/fonts/truetype/mscorefonts/Courier_New.ttf
sudo cp courbd.ttf /usr/share/fonts/truetype/mscorefonts/Courier_New_Bold.ttf
sudo cp courbi.ttf /usr/share/fonts/truetype/mscorefonts/Courier_New_Bold_Italic.ttf
sudo cp couri.ttf /usr/share/fonts/truetype/mscorefonts/Courier_New_Italic.ttf
sudo cp georgiaz.ttf /usr/share/fonts/truetype/mscorefonts/Georgia_Bold_Italic.ttf
sudo cp georgiab.ttf /usr/share/fonts/truetype/mscorefonts/Georgia_Bold.ttf
sudo cp georgiai.ttf /usr/share/fonts/truetype/mscorefonts/Georgia_Italic.ttf
sudo cp georgia.ttf /usr/share/fonts/truetype/mscorefonts/Georgia.ttf
sudo cp impact.ttf /usr/share/fonts/truetype/mscorefonts/Impact.ttf
sudo cp times.ttf /usr/share/fonts/truetype/mscorefonts/Times_New_Roman.ttf
sudo cp timesbd.ttf /usr/share/fonts/truetype/mscorefonts/Times_New_Roman_Bold.ttf
sudo cp timesbi.ttf /usr/share/fonts/truetype/mscorefonts/Times_New_Roman_Bold_Italic.ttf
sudo cp timesi.ttf /usr/share/fonts/truetype/mscorefonts/Times_New_Roman_Italic.ttf
sudo cp trebuc.ttf /usr/share/fonts/truetype/mscorefonts/Trebuchet_MS.ttf
sudo cp trebucbd.ttf /usr/share/fonts/truetype/mscorefonts/Trebuchet_MS_Bold.ttf
sudo cp trebucbi.ttf /usr/share/fonts/truetype/mscorefonts/Trebuchet_MS_Bold_Italic.ttf
sudo cp trebucit.ttf /usr/share/fonts/truetype/mscorefonts/Trebuchet_MS_Italic.ttf
sudo cp verdanab.ttf /usr/share/fonts/truetype/mscorefonts/Verdana_Bold.ttf
sudo cp verdanai.ttf /usr/share/fonts/truetype/mscorefonts/Verdana_Italic.ttf
sudo cp verdanaz.ttf /usr/share/fonts/truetype/mscorefonts/Verdana_Bold_Italic.ttf
sudo cp verdana.ttf /usr/share/fonts/truetype/mscorefonts/Verdana.ttf
sudo cp webdings.ttf /usr/share/fonts/truetype/mscorefonts/Webdings.ttf

#Clean up
cd ~
rm -r /tmp/mscorefonts

and sudo dpkg --configure -a
