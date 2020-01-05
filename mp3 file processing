# decompress zip and rar file
cd ~/Downloads/
for f in *.zip;do unzip "$f";done
for g in *.rar;do unrar x "$g"; done
# 7z x *.7z -o*
sleep 1

# delete file compress and install
rm -f *.zip *.rar *.7z 

# Rag processing
for i in *.mp3
do
eyeD3 --remove-all-comments -n "0" --publisher=0 --user-url-frame : $i
done

sleep 1
# Directory creation
mkdir -p ~/Music/smartphone
mkdir -p ~/Music/usb
sleep 1

# Move
mv ~/Downloads/*.mp3 ~/Music/smartphone
cp ~/Music/smartphone/*.mp3 ~/Music/usb

# Delete cover
cd ~/Music/usb
find . -name \*.mp3 -execdir eyeD3 --remove-all-images {} \;

# Delete MP3 from origins
cd ~/Downloads
rm -f *.mp3

notify-send --urgency=low -i totem "Conversion Completed"
