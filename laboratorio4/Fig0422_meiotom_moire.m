%% Meio-tom e efeito Moiré
%Figura 4.22 Imagem de jornal e ampliação mostrando como os pon-
%tos em meio-tom são arranjados para representar tons de cinza.

close all; clc; clear
%pkg load image 

f = imread('Fig0422(newspaper_shot_woman).bmp');
f = rgb2gray(f);

f= double(f);

figure; imshow(f,[]);title('Fig0422 original')

F = fft2(f);
F = fftshift(F);
figure; imshow(abs(F),[])

J = 1 * log (1 + abs(F));
figure; imshow(abs(J),[])
