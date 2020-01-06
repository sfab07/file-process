# decompress zip and rar file
cd ~/Downloads/
for f in *.zip;do unzip "$f";done
for g in *.rar;do unrar x "$g"; done
# 7z x *.7z -o*
sleep 1


# delete compress and installation file
rm -f *.zip *.rar *.7z

# pdf repair
for i in *.pdf
do
j="${i%.*}.pdf+"
pdftk $i output $j
done

# Creation directory
mkdir -p ~/Documents/pdf
mkdir -p ~/Documents/epub
sleep 1

# Move
mv ~/Downloads/*.pdf+ ~/Documents/pdf
mv ~/Downloads/*.epub ~/Documents/epub
sleep 1

# rename pdf+ to pdf
cd ~/Documents/pdf
ls -d *.pdf+ | sed 's/\(.*\).pdf+$/mv "&" "\1.pdf"/' | sh
sleep 1

# Delete
cd ~/Downloads
rm -f *.pdf
notify-send --urgency=low -i totem "Repair and transfer complete"
