#!/bin/sh
convert $1".png" -gravity North -background black -extent 1920x1920 $1"ext.png"
convert $1"ext.png" -fft -delete 1 -contrast-stretch 0 -evaluate log 100000 -gamma 2 $1"eval5g2ct0fft.png"
convert $1"ext.png" -fft -delete 1 -evaluate log 100000 $1"evalonly.png"
convert $1"ext.png" -fft $1"fft-debug.png"
