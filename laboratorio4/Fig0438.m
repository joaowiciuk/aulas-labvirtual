

%% Figura 4.38 (a) Imagem de uma construção e (b) seu espectro.

 close all; clc; clear
%pkg load image 

%% Figura 
f = double(imread('Fig0438(a)(bld_600by600).bmp'));
figure; imshow(f,[0 255]); title('Fig0438')

F = fft2(f);
F_norm = fftshift(F);
J = 1 * log (1 + abs(F_norm));
figure; imshow(J,[])










