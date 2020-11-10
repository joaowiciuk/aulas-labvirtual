%% Meio-tom e efito Moiré
%Uma imagem de jornal de tamanho 246 × 168 pixels
%amostrada em 75 dpi mostrando um padrão moiré. O padrão moiré nes-
%sa imagem é o padrão de interferência criado entre a orientação ±45°
%dos pontos em meio-tom e a orientação norte-sul da grade de amos-
%tragem utilizada para digitalizar a imagem.
close all; clc; clear
%pkg load image 

f = imread('Fig0421(car_newsprint_sampled_at_75DPI).bmp');
%f = rgb2gray(f);

figure; imshow(f,[]);title('Fig0421 original')

F = fft2(f);
F = fftshift(F);
figure; imshow(abs(F),[])

J = 1 * log (1 + abs(F));
figure; imshow(abs(J),[])

% J2 = mat2gray(J);
% imwrite(J2,'myfft.png')

