clear; clc;close all

f =  imread('angiography_mask_image.tif');
h = imread('angiography_live_ image.tif');

f = im2double(f);
h= im2double(h);

g= f-h;

imshow([f h],[])
figure, imshow(g,[])
