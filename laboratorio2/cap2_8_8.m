clear;clc;close all
f =imread('lena.bmp');
T =128;
g = f > T;
B=[];
for index2 = 1:size(g,2)
    A = [];
    for index = g(index2,:)
        A = [A index*ones(3,3)];
    end
    B = [B ; A];
end
imshow(B)

    