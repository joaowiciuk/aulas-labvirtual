clear; clc; close all

f = imread('lena.bmp');
whos f

figure
imshow(f)

[M, N] = size(f);

g = imread('einstein.tif');

imtool(g)
