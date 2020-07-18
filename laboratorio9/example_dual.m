I = imread('Fig0907(a)(text_gaps_1_and_2_pixels).tif');

% close all
% Idilate = imdilate(I, ones(3,3));
% Ierode = imerode(Idilate, ones(3,3));
% figure
% imshowpair(Idilate, Ierode,'montage')


imshow(I)
close all
Idilate = imdilate(I, ones(3,3));
imshowpair(I, not(Idilate),'montage')


Ierode = imerode(not(I), ones(3,3));
figure
imshowpair(Idilate, Ierode,'montage')

