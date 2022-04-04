+++
title = "FFMPEG"
weight = 30
+++

## Basic conversion

```
ffmpeg -i input.mp4 -codec:a aac -b:a 256k -codec:v libx264 -crf 20 output.mp4
```

## Convert to 720p

```
ffmpeg -i input.mp4 -codec:a aac -b:a 256k -codec:v libx264 -crf 20 -vf scale=-1:720 output.mp4
```


## Slice video

--ss :   start from seconds from begining <br>
-t   :   time duration of clip

```
ffmpeg -i input.mp4 -ss 30 -t 10 output.mp4
```

## WEBM - VP8

See [Encode-VP8](https://trac.ffmpeg.org/wiki/Encode/VP8)

```
ffmpeg -i input.mp4 -c:v libvpx -b:v 4M -crf 10 -c:a libvorbis output.webm
```

## Extract audio from video file

```
ffmpeg -i input.mp4 -vn -acodec copy audio.aac
```

## Replace audio track

```
ffmpeg -i input.mp4 -i audio.wav -c:v copy -map 0:v:0 -map 1:a:0 output.mp4
```

## Create animated gif

```
ffmpeg -i input.mp4 -filter_complex "[0:v] palettegen" palette.png
ffmpeg -i input.mp4 -i palette.png -filter_complex "fps=12,scale=800:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
```