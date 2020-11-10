%pkg load fuzzy-logic-toolkit
close all; clear;clc
%% Figura 4.31
f = double(imread('Fig0429(a)(blown_ic).bmp'));
%f = rgb2gray(f);
figure; imshow(f,[0 255]); title('Fig0429(a)')

F = fft2(f);
F_norm = fftshift(F);
J = 1 * log (1 + abs(F_norm));
figure; imshow(J,[])

[M , N] = size(f);

x=linspace(-5,5,N);
y=linspace(-5,5,M);

[X,Y]=meshgrid(x,y);
z=(2.9/sqrt(2*pi).*exp(-(X.^2/2)-(Y.^2/2)));
figure; surf(X,Y,z);
shading interp
axis tight

H = fftshift(z);

G = F.*H;

g = ifft2(G);

figure; imshow(g,[]); title('Fig0429(a) filtrado o dc')

G_norm = fftshift(G);
J = 1 * log (1 + abs(G_norm));
figure; imshow(J,[])

%% passa altas
z2= 1.1569-z; % idealmente 1-z
figure; surf(X,Y,z2);
shading interp
axis tight

H = fftshift(z2);

G = F.*H;

g = ifft2(G);

figure; imshow(g,[]); title('Fig0429(a) filtrado o dc')

G_norm = fftshift(G);
J = 1 * log (1 + abs(G_norm));
figure; imshow(J,[])


%% passa altas dc nao zerado
z2= 0.5-z;
figure; surf(X,Y,z2);
shading interp
axis tight

H = fftshift(z2);

G = F.*H;

g = ifft2(G);

figure; imshow(g,[]); title('Fig0429(a) filtrado o dc')

G_norm = fftshift(G);
J = 1 * log (1 + abs(G_norm));
figure; imshow(J,[])