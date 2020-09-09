%% Projeto 1
%% Autor: eu

%% Projeto 1.2
%% Transformada de Fourier
%Escolha um sinal sintetizado acima. Aplicar uma Dilatação e um Deslocamento
close all; clear;clc
x = linspace(-10,10,2000);
y = sinc(2*pi*x);
myfft = fft(y);
myfft = fftshift(abs(myfft)/numel(myfft));

f = x*(1/(x(2)-(x(1))))/numel(myfft);
figure;plot(x,y);
grid on
figure;plot(f,myfft);