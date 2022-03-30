ls /home/pi/Timelapse/tl_*.jpg > /home/pi/Timelapse/stills.txt

today=$(date -d "today 13:00" +"%Y-%m-%d")

ffmpeg -i /home/pi/Timelapse/vids/timelapse-weather_${today}.avi -c:v copy -an /home/pi/Timelapse/vids/timelapse-weather_${today}.mp4
ffmpeg -y -i /home/pi/Timelapse/vids/timelapse-weather_${today}.avi -b:v 5M -q:v 10 -vcodec libvpx -an /home/pi/Timelapse/vids/timelapse-weather.webm

cp /home/pi/Timelapse/vids/timelapse-weather_${today}.mp4 /var/www/html/timelapse-weather.mp4
cp /home/pi/Timelapse/vids/timelapse-weather.webm /var/www/html/timelapse-weather.webm
rm /home/pi/Timelapse/vids/timelapse-weather_${today}.avi
rm /home/pi/Timelapse/tl_*.jpg