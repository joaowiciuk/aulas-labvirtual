%Correção de sombreamento
close all
clc
%pkg load image
f = imread('tungsten_filament_shaded.bmp');
h = imread('tungsten_sensor_shading.bmp');
g  = double(f) ./ double(h);
 
subplot(2,2,1);
    imshow(f);
    title('Original');
subplot(2,2,3);
    imshow(h);
    title('Sombreamento (sensor)');
subplot(2,2,[2 4]);
    imshow(g);
    title('Resultado');

imwrite(mat2gray(g),'mynewimage.bmp');
g1 = imread('mynewimage.bmp');
figure,
imshow(g1), 