close all
clc

f = imread('tungsten_filament_shaded.tif');
h = imread('tungsten_sensor_shading.tif');
g  = double(f) ./ double(h);

imshow(f, []), figure
imshow(g), 
imwrite(mat2gray(g),'mynewimage.bmp');

g1 = imread('mynewimage.bmp');
figure,
imshow(g1), 