for var in `ls -1 MVI_????.MOV`
do
  ffmpeg -i $var -s 480x270 -vcodec libx264 -b 600k -acodec libfaac -ac 2 -ar 48000 -ab 128k -coder 0 -level 13 -nr 50 -threads 2 $var.mp4
done

