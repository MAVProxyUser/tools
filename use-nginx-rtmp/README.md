# 使用nginxrtmp搭建低延时少路直播方案
包括一些常用命令
## 推流端命令
ffmpeg -r 30 -video_size 1280x720 -f avfoundation -i "0" -c:v libx264 -preset veryfast -tune zerolatency -pix_fmt yuv444p -x264opts crf=20:vbv-maxrate=3000:vbv-bufsize=100:intra-refresh=1:slice-max-size=1500:keyint=30:ref=1 -vcodec libx264 -f flv rtmp://serverhost:1935/live/test
## 播流端命令 需要安装mplayer
mplayer -benchmark rtmp://serverhost:1935/live/test

这里使用不同的播放器，对于结果的影响比较大
