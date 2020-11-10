%% Exemplo 4.13 O espectro de Fourier 2-D de uma função
% simples. Phase

%%Figura 4.26 
% Ângulo de fase correspondente (a) à imagem do retângulo centralizado na Figura 4.24(a), (b) à imagem transladada na Figura
% 4.25(a) e (c) à imagem rotacionada na Figura 4.25(c).

% close all; clc; clear
%pkg load image 

f1 = double(imread('Fig0424(a)(rectangle).bmp'));
F = fft2(f1);
figure; imshow(angle(F),[])

f2 = double(imread('Fig0425(a)(translated_rectangle).bmp'));
%figure; imshow(f2,[]);title('Fig0425(a) original')
F = fft2(f2);
F = fftshift(F);
figure; imshow(angle(F),[])

f3 = imrotate(f1,-45);
F = fft2(f3);
F = fftshift(F);
figure; imshow(angle(F),[])


