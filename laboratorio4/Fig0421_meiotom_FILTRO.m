%% Meio-tom e efito Moiré
%Uma imagem de jornal de tamanho 246 × 168 pixels
%amostrada em 75 dpi mostrando um padrão moiré. O padrão moiré nes-
%sa imagem é o padrão de interferência criado entre a orientação ±45°
%dos pontos em meio-tom e a orientação norte-sul da grade de amos-
%tragem utilizada para digitalizar a imagem.
close all; clc; clear
%pkg load image 

f = imread('Fig0421(car_newsprint_sampled_at_75DPI).bmp');
f = rgb2gray(f);
[M,N]=size(f);

figure; imshow(f,[]);title('Fig0421 original')

F = fft2(f);
F = fftshift(F);
figure; imshow(abs(F),[])

J = 1 * log (1 + abs(F));
figure; imshow(abs(J),[])

% J2 = mat2gray(J);
% imwrite(J2,'myfft.png')

%imtool(J,[])


H =ones(M,N);

centros = [56 86  10; 112  82 10; 112  41 10; 55 45  10;
           58 166 10; 114 162 10; 115 203 10; 58 207 10 ];

% out = idealHighpassFilter( 25, 25, 10 );  
 out = gaussianHighpassfilter( 25, 25, 5 );  

         
[m,n]=size(out);

for index = 1:8
    col = floor(centros(index,1)-n/2);
    row = floor(centros(index,2)-m/2);
    H(row:row+m-1 , col:col+n-1 ) = out;    
end

figure;imshow(H,[])

G = J.*H;
figure;imshow(G,[])

G = F.*H;
frec = ifft2(fftshift(G));

figure;imshow(frec,[])

