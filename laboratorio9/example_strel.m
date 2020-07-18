clear;close all;clc
I = imread('Fig0907(a)(text_gaps_1_and_2_pixels).tif');

SE1 = ones(3,3);
Idilate = imdilate(I,SE1 );
figure; imshowpair(I, Idilate,'montage')

SE2 = [0 1 0
      1 1 1
      0 1 0];
Idilate = imdilate(I, SE2);
figure; imshowpair(I, Idilate,'montage')

%% test strel
SE1 = strel('rectangle',[3 3]);
Idilate = imdilate(I,SE1 );
figure; imshowpair(I, Idilate,'montage')

SE2 = strel('diamond',1);
Idilate = imdilate(I, SE2);
figure; imshowpair(I, Idilate,'montage')

%% outros

SE = strel('diamond',1);
SE = strel('diamond',2);
SE = strel('diamond',3);

SE = strel('disk',1);
SE = strel('disk',5);
SE = strel('disk',9);
SE = strel('disk',15);
SE = strel('disk',45);

SE = strel('line',3,45);
SE = strel('line',4,45); %*
SE = strel('line',5,45);
