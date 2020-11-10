

%% Figura 4.29 (a) Imagem de um circuito integrado danificado obtida com um microscópio eletrônico de varredura. (b) Espectro de Fourier de (a).
%(Imagem original: cortesia do Dr. J. M. Hudak, Instituto Brockhouse para Materiais de Pesquisa, Universidade McMaster, Hamilton, Ontário, Canadá.)
 close all; clc; clear
%pkg load image 

%% Figura 4.29
f = double(imread('Fig0429(a)(blown_ic).bmp'));
figure; imshow(f,[0 255]); title('Fig0429(a)')

F = fft2(f);
F_norm = fftshift(F);
J = 1 * log (1 + abs(F_norm));
figure; imshow(J,[])

%% Figura 4.30 Resultado da filtragem da imagem da Figura 4.29(a) 
% zerando o termo F(M/ 2, N/2) na transformada de Fourier.
[M,N] = size(F);

H = ones(M, N);

H(1, 1) = 0;

G = F.*H;

g = ifft2(G);

figure; imshow(g,[0 255]); title('Fig0429(a) filtrado o dc')

G_norm = fftshift(G);
J = 1 * log (1 + abs(G_norm));
figure; imshow(J,[])








