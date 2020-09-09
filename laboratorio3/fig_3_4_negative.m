%% Negativo de uma imagem
% A Figura 3.4 mostra um exemplo. A imagem
% original é uma mamografia digital mostrando uma pequena
% lesão.
% Apesar de o conteúdo visual ser o mesmo nas
% duas imagens, observe como é mais fácil analisar o tecido
% mamário no negativo da imagem neste caso particular.

close all; clc;clear % limpar a memoria e fechar figuras
pkg load image %% octave

%% leitura da imagen
I = imread('Fig0304(a)(breast_digital_Xray).bmp');

%% visualizar a imagem normal 
imshow(I)

%% negativo
J = imcomplement(I);

%% visualizar a imagem negativo
imshow(J)

%% visualizar as imagens normal e negativo
imshow([I J])

%publish('fig_3_4_negative.m')

