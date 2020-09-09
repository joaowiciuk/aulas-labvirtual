% pkg load image %% octave
close all; clc;clear


I = imread('lena.bmp');

%% negativo

J = imcomplement(I);

imshow([I J])

%% linear

J = imadjust(I,[0 0.5],[0.5 1],1);

imshow([I J])

%% logaritmico

J = 1 * log (1 + double(I));

S = im2uint8 (mat2gray(J));

imshow([I S])

%% gamma

J = imadjust(I,[],[],5);

imshow([I J])