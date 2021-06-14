#!/bin/sh
FILENAME=${1%.*}
convert $FILENAME".png" -gravity North -background black -extent 1920x1920 -fft +depth $FILENAME"temp.miff"
convert $FILENAME"temp.miff[0]" -contrast-stretch 0 -evaluate log 1000000 $FILENAME"L6-FFT-c.png"
#convert $FILENAME"temp.miff[0]" -auto-level -evaluate log 1000000 $FILENAME"L6-FFT-a.png"
#convert $FILENAME"temp.miff[0]" -normalize -evaluate log 1000000 $FILENAME"L6-FFT-n.png"
convert $FILENAME"temp.miff[0]" -evaluate log 1000000 $FILENAME"rawfft.png"
#convert $FILENAME"temp.miff[0]" -evaluate log 1000000 -normalize $FILENAME"rawfft-n.png"
#convert $FILENAME"temp.miff[0]" -evaluate log 1000000 -contrast-stretch 0 $FILENAME"rawfft-c.png"
#convert $FILENAME"ext.png" -fft $FILENAME"fft-debug.png"