close all;
clc; clear;

I = imread('Fig1039(a)(polymersomes).tif');
figure, imshow(I)  

        level = 0.65
        BW = imbinarize(I,level);
        figure, imshow(BW)   
        
        level = graythresh(I);
        BW = imbinarize(I,level);
        figure, imshow(BW)   