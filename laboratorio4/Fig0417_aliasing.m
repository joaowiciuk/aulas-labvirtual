%% Exemplo 4.7 Ilustração do aliasing em imagens reamostradas.
% Os efeitos do aliasing em geral são piorados quando o
% tamanho de uma imagem digital é reduzido
close all; clc; clear
%pkg load image 

f = double(imread('Fig0417(a)(barbara).bmp'));
figure; imshow(f,[0 255]);title('Fig0417(a) original')

g = imresize(f,[283 201],'nearest');

figure; imshow(g,[0 255]);title('Fig0417(b) redimensionada 50%')

w = fspecial('average');
g2 = imfilter(g,w);

figure; imshow(g2,[0 255]);title('Fig0417(c) suavizado')

figure; imshow([g g2],[0 255]);

