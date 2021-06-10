import numpy as np
import cv2
import sys

# Thanks for fmw42 (stack overflow user:7355741)
# read input as grayscale, convert to float and divide by 255
# opencv fft only works on grayscale
img = cv2.imread(sys.argv[1], 0).astype(np.float32)/255

# convert image to floats and do dft normalizing by 1/N (N=256*256) saving as complex output
dft = cv2.dft(img/(1920*1920), flags = cv2.DFT_COMPLEX_OUTPUT)

# apply shift of origin from upper left corner to center of image
dft_shift = np.fft.fftshift(dft)

# extract magnitude and phase images
mag, phase = cv2.cartToPolar(dft_shift[:,:,0], dft_shift[:,:,1])

# get spectrum for viewing using normalized base 10 log 
spec = np.log10(1000000*mag+1)/np.log10(1000000+1)

# convert from float in range 0-1 to uint8 in range 0-255
spec = (255*spec).clip(0,255).astype(np.uint8)

# write result to disk
cv2.imwrite("output_temp_fft.png", spec)