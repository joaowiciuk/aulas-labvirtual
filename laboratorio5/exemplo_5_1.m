% Exemplo 5.1  Imagens com ruído e seus histogramas.
close all;clear;
f = im2double(imread('Fig0503 (original_pattern).tif'));

figure, imshow(f),
figure; imhist(f)

 noise=imnoise2('gaussian', size(f,1), size(f,2), 0.0, sqrt(0.008)) ;
 noise=imnoise2('rayleigh', size(f,1), size(f,2),0.1,0.01) ;
 noise=imnoise2('erlang', size(f,1), size(f,2), 10, 1 ) ;
 noise=imnoise2('exponential', size(f,1), size(f,2),5 ) ;
 noise=imnoise2('uniform', size(f,1), size(f,2),0,0.35 ) ;
 noise=imnoise2('salt & pepper', size(f,1), size(f,2)) ;

g = f + noise;

g = mat2gray(g);

figure, imshow(noise,[]),
figure, imshow(g,[]),
figure; imhist(g)

