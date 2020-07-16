clear; clc;close all

f =  imread('lena.bmp');
imshow(f)
figure;
h = imhist(f);
bar(h)

g = histeq( f , 5 );
figure; imshow(g);
figure
h = imhist(g);
bar(h)
