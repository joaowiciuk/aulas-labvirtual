close all
clc
f=imread('lena.bmp');
size(f)
[M N] = size(f);
whos f

imshow(f,[])

g = imread('einstein.tif');
imshow(f), figure, imshow(g)

f = imread('tungsten_filament_shaded.tif');
h =imread('tungsten_sensor_shading.tif');
