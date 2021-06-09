import numpy as np
import cv2 as cv

img = cv.imread('TEST.png',0)

dft = cv.dft(np.float32(img),flags = cv.DFT_COMPLEX_OUTPUT)
dft_shift = np.fft.fftshift(dft)
magnitude_spectrum = np.log(cv.magnitude(dft_shift[:,:,0],dft_shift[:,:,1]))

cv.imwrite('TESTOUT.png',magnitude_spectrum)