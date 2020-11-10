%% Exemplo 4.14 Ilustração das propriedades do espectro de Fourier e ângulo de fase.

%A Figura 4.27(b) é o ângulo de fase da DFT da Figura
%4.27(a). Não há detalhes nesse arranjo que nos levariam,
%por meio da análise visual, a associá-lo às características
%de sua imagem correspondente (nem mesmo a simetria do
%ângulo de fase é visível)

%Figura 4.27 (a) Mulher. (b) Ângulo de fase. (c) Mulher reconstruída utilizando apenas o ângulo de fase. (c) Mulher reconstruída utilizando ape-
%nas o espectro. (e) Reconstrução utilizando o ângulo de fase correspondente à mulher e o espectro correspondente ao retângulo da Figura 4.24(a).
%(f) Reconstrução utilizando a fase do retângulo e o espectro da mulher.

 close all; clc; clear
%pkg load image 

%% Figura 4.27 (a) Mulher 
f = double(imread('Fig0427(a)(woman).bmp'));
figure; imshow(f,[])
F = fft2(f);

%% Figura 4.27(b) Ângulo de fase. 
figure; imshow(angle(F),[])

%% Figura 4.27(c) Mulher reconstruída utilizando apenas o ângulo de fase. 
f_rec = ifft2(1*exp(j*angle(F)));
figure; imshow(f_rec,[])

%% Figura 4.27(d) Mulher reconstruída utilizando apenas o espectro. 
f_rec = ifft2(abs(F));
f_rec = fftshift(f_rec);
figure; imshow(f_rec,[])

%% Figura 4.27(e) Reconstrução utilizando o ângulo de fase correspondente à mulher e o espectro correspondente ao retângulo da Figura 4.24(a).
fr = double(imread('Fig0424(a)(rectangle).bmp'));
fr = imresize(fr,0.5);
FR = fft2(fr);

f_rec = ifft2(abs(FR).*exp(j*angle(F)));
figure; imshow(f_rec,[])

%% Figura 4.27(f) Reconstrução utilizando a fase do retângulo e o espectro da mulher.
f_rec = ifft2(abs(F).*exp(j*angle(FR)));
figure; imshow(f_rec,[])







