% pkg load image %% octave
close all; clc;clear
I = imread('lena.bmp');

J = imhist(I);

stem([0:256-1],J)

%% exemplo numerico

I = [   0   0   0   0   0   0   0   0   0   0 ;
      100 100 100 100 100 100 100 100 100 100 ;
      150 150 150 150 150 150 150 150 150 150 ;
      250 250 250 250 250 250 250 250 250 250 ];
 
J = imhist(uint8(I));

stem([0:256-1],J)