clear; clc;close all

f =  imread('lena.bmp');
imshow(f)
figure;
h = imhist(f);
%bar(h)
fplot(h)



