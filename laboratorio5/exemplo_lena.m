close all;clear;
I = im2double(imread('lena_gray_512.tif'));
figure, imshow(I),

F = fft2(I);
Fc = fftshift(F);
figure, imshow(log(1+abs(Fc)),[]),

PSF = fspecial ( 'disk' , 7 );
Idegr = imfilter(I,PSF);
Fdegr = fft2(Idegr);
Fc_degr = fftshift(Fdegr);

figure, imshow(log(1+abs(Fc_degr)),[]),
