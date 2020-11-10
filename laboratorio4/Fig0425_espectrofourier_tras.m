%% Exemplo 4.13 O espectro de Fourier 2-D de uma função
% simples.
%Figura 4.25 (a) O retângulo da Figura 4.24(a) transladado e (b) o
%espectro correspondente. (c) Retângulo rotacionado e (d) o espectro
%correspondente. O espectro correspondente ao retângulo transla-
%dado é idêntico ao espectro correspondente à imagem original na
%Figura 4.24(a).

 close all; clc; clear
%pkg load image 

f = double(imread('Fig0425(a)(translated_rectangle).bmp'));
figure; imshow(f,[]);title('Fig0425(a) translated rectangle')

F = fft2(f);
F = fftshift(F);
figure; imshow(abs(F),[])

J = 1 * log (1 + abs(F));
figure; imshow(abs(J),[])

f2 = double(imread('Fig0424(a)(rectangle).bmp'));
f2 = imrotate(f2,-45);
figure; imshow(f2,[]);title('Fig0425(c) rotacionado 45°')

F = fft2(f2);
F = fftshift(F);
figure; imshow(abs(F),[])

J = 1 * log (1 + abs(F));
figure; imshow(abs(J),[])

