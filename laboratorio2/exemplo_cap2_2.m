close all; clc;;clear
%pkg load image

f = imread('tungsten_filament_shaded.bmp');
h = imread('tungsten_sensor_shading.bmp');

imshow(f)
figure; imshow(h)

f2 =im2double(f);
h2 =im2double(h);

g  = double(f)./double(h);
g2  = (f2)./(h2);

figure
imshow(g)


