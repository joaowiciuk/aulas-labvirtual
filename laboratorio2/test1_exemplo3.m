%Diferença entre duas imagens
clear; clc;close all
%pkg load image
f =  imread('angiography_mask_image.bmp');
h = imread('angiography_live_ image.bmp');

f = im2double(f);
h= im2double(h);

g= f-h;

imshow([f h],[])
figure, imshow(g,[])
