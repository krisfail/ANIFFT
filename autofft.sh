#!/bin/sh
convert $1".png" -gravity North -background black -extent 1920x1920 $1"ext.png"
convert $1"ext.png" -fft +depth $1"fft.png"
convert $1"fft-0.png" -contrast-stretch 0 -evaluate log 100000 -gamma 1.5 $1"fft.png"
