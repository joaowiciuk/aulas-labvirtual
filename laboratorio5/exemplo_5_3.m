close all; clear;clc
%C = [0 64 ; 0 128 ; 32 32 ; 64 0 ; 128 0 ; -32 32 ] ;
C = [18 0 ] ;

[r, R, S] = imnoise3 ( 512 , 512 , C ) ;

imshow ( S , [ ] )
figure , imshow ( r, [])


I = im2double(imread('lena_gray_512.tif'));
I=I+1e4*r;
figure, imshow(I),


F = fft2(I);
Fc = fftshift(F);
figure, imshow(log(1+abs(Fc)),[]),
