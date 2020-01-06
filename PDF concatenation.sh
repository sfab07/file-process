#!/bin/sh
cd ~/Documents/pdf-temp/
pdftk *.pdf cat output all.pdf
mv all.pdf ~/Documents/pdf/

sleep 1
rm -r ~/Documents/pdf-temp/
