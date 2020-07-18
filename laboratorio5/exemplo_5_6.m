% Exemplo 5.1  Imagens com ruído e seus histogramas.
close all;clear;
f = im2double(imread('Fig0507(a)(ckt-board-orig).tif'));

figure, imshow(f),

g = imnoise ( f , 'salt & pepper' , 0.25 ) ;
mysize=25
f1 = medfilt2 ( g , [ mysize  mysize] , 'symmetric' ) ;
f2 = adpmedian ( g , mysize ) ;

 
g = mat2gray(g);
f1 = mat2gray(f1);
f2 = mat2gray(f2);

figure, imshow(g,[]),
figure, imshow(f1,[]),
figure; imshow(f2,[]),

