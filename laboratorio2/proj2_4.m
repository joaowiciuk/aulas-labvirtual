clear; clc;close all

f = double( imread('tungsten_filament_shaded.tif'));
h =double( imread('tungsten_sensor_shading.tif'));

g= f./h;

imshow([f h],[])
figure, imshow(g,[])

clear; clc;close all
f =double( imread('angiography_live_ image.tif'));
h = double( imread('angiography_mask_image.tif'));

g = f-h;
imshow([f h],[])
figure, imshow(g,[])