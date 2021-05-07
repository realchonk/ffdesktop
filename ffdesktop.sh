#!/bin/sh
name="Desktop Webcam"
sudo rmmod v4l2loopback
sudo modprobe v4l2loopback card_label="$name" exclusive_caps=1

for f in /sys/class/video4linux/video*; do
   if [ "$(cat "$f/name")" = "$name" ]; then
      webcam="/dev/$(basename "$f")"
      break
   fi
done

[ -z "$webcam" ] && echo "Failed to find webcam" && exit 1

ffmpeg -f x11grab -r 15 -s 1920x1080 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 "$webcam"
