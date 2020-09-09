%% Transformada potencia (gamma)
% A imagem Figura 3.9(a) a ser processada agora tem uma apa-
% rência desbotada, indicando que a compressão dos níveis
% de intensidade é desejável. Isso pode ser realizado com a
% Equação 3.2-3 utilizando valores de γ maiores do que 1. Os
% resultados do processamento da Figura 3.9(a) com γ = 3,0,
% 4,0 e 5,0 são mostrados nas figuras 3.9(b) a (d). Resultados
% adequados foram obtidos com valores de gama iguais a 3,0
% e 4,0, e o último apresentou uma aparência ­ligeiramente
% melhor graças ao maior contraste. O resultado obtido com
% γ = 5,0 apresenta áreas muito escuras, nas quais alguns de-
% talhes são perdidos. A região escura à esquerda da estrada
% principal no quadrante superior esquerdo é um exemplo de
% uma área assim.

close all; clc;clear % limpar a memoria e fechar figuras
%pkg load image %% octave

%% leitura da imagen
I = imread('Fig0309(a)(washed_out_aerial_image).bmp');

%% visualizar a imagem normal 
figure; imshow(I,[]); title('Figura 3.9(a) original+')

%% gamma = 3
J = imadjust(I,[],[],3);

%% visualizar a depois do realce gamma
figure; imshow(J,[]); title('Figura 3.9(a) com γ = 3,0') 

%% gamma = 4
J = imadjust(I,[],[],4);

%% visualizar a depois do realce gamma
figure; imshow(J,[]); title('Figura 3.9(a) com γ = 4,0')

%% gamma = 5
J = imadjust(I,[],[],5);

%% visualizar a depois do realce gamma
figure; imshow(J,[]); title('Figura 3.9(a) com γ = 5,0')

