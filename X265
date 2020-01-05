# decompress zip and rar file
cd ~/Downloads/
for f in *.zip;do unzip "$f";done
for g in *.rar;do unrar x "$g"; done
# 7z x *.7z -o*
sleep 1

# delete compress and installation 
filerm -f *.zip *.rar *.7z

# conversion x265
for i in *.avi *.mp4 *.wmv
do
j="${i%.avi}_X265.mkv"
ffmpeg -i $i -c:v libx265 -vf scale=1920:1080 -preset medium -x265-params crf=22 -c:a libopus -ac 2 -clev 3dB -slev -6dB $j
done

sleep 1
mv ~/Downloads/*.mkv ~/Videos/
sleep 1

# Delete original videoscd ~/Downloads
rm -f *.avi *.mp4 *.wmv 
notify-send --urgency=low -i totem "Conversion Completed"
