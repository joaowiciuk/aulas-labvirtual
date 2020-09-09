% pkg load image %% octave

s = imread('lena.bmp');

r = imadjust(s,[],[],1);

imshow([s r])