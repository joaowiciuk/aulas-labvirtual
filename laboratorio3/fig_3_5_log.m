%% transformada logaritmica de uma imagem
%
close all; clc;clear % limpar a memoria e fechar figuras
%pkg load image %% octave

%% leitura da imagen
I = imread('Fig0305(a)(DFT_no_log).bmp');

%% visualizar a imagem normal 
figure; imshow(I,[])

%% logaritmico
J = 1 * log (1 + double(I));
S = mat2gray(J);

%% visualizar a depois do realce log
figure; imshow(S,[])



