from scipy import fftpack
import matplotlib.pyplot as plt
import sys
import numpy as np

image = plt.imread(sys.argv[1])     # flatten=True gives a greyscale image
fft2 = fftpack.fft2(image)

plt.imshow(20*np.log10(abs(fft2)))
plt.show()
