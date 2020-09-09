% pkg load image %% octave
close all; clc;clear


I = imread('Fig0312(a)(kidney).bmp');

%% visualizar a imagem original 
imshow(I,[0 255])

B = dec2bin(I,8);

B1 = str2double(B(:,1));
B2 = str2double(B(:,2));
B3 = str2double(B(:,3));
B4 = str2double(B(:,4));
B1 = str2double(B(:,5));
B2 = str2double(B(:,6));
B3 = str2double(B(:,7));
B4 = str2double(B(:,8));

J2 = num2str(B2);

J2 = bin2dec(J2);

J3 = uint8(reshape(J2,[828 720]));

figure; imshow(J3,[])