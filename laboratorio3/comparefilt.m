clear;clc

w = 1/9*ones(3,3);
f = double (imread('lena.bmp'));
gd = imfilter(f , w ,0) ;
imshow(gd,[])

