%% Exemplo 4.13 O espectro de Fourier 2-D de uma função
% simples.
% Figura 4.24 (a) Imagem. (b) Espectro mostrando regiões com pontos claros nos quatro cantos. (c) Espectro centralizado. (d) Resultado mostran-
% do detalhes realçados após uma transformação logarítmica. Os cruzamentos por zero do espectro são mais próximos na direção vertical porque
% o retângulo em (a) é maior nessa direção. A convenção de coordenadas utilizada neste livro posiciona a origem dos domínios do espaço e da
% frequência no canto superior esquerdo.

% A Figura 4.24(a) mostra uma imagem simples, e a Figu-
% ra 4.24(b) mostra seu espectro, cujos valores foram ajusta-
% dos para o intervalo [0, 255] e exibidos na forma de uma
% imagem
close all; clc; clear
%pkg load image 

f = double(imread('Fig0424(a)(rectangle).bmp'));
figure; imshow(f,[]);title('Fig0424(a) original')

F = fft2(f);

figure; imshow(abs(F),[]);title('Fig0424(b) FFT sem centralizar')

F = fftshift(F);
figure; imshow(abs(F),[]);title('Fig0424(b) FFT centralizada')

J = 1 * log (1 + abs(F));
figure; imshow(abs(J),[]);title('Fig0424(b) FFT realçada')
