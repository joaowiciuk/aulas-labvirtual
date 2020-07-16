clear;close all;clc

mask = 1/9*[1 1 1; 1 1 1; 1 1 1];
f = double (imread('lena.bmp'));
f = [zeros(512,2) f zeros(512,2) ];
g=zeros(3,512+2+2);


for x = 2:(511+2+2)
    h  = f(1:3,x-1:x+1).*mask;
    val = sum(h(:)); 
    g(2, x)= val;
end

figure;imshow(g)


