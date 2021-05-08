# ffdesktop
A simple script to stream your X11 desktop to a virtual webcam.

## Dependencies
- v4l2loopback kernel module<br>
- ffmpeg (with x11grab)<br>

## Installation
Copy ffdesktop.sh to your favorite <i>bin</i> directory (like /usr/local/bin)<br>
```sudo install -Dm755 ffdesktop.sh /usr/local/bin/ffdesktop```

## Usage
```ffdesktop [resolution]```<br>
By default ffdesktop uses the current display mode.<br>

## TODO
- multi-monitor support<br>
- wayland support<br>
