I = imread('Fig0907(a)(text_gaps_1_and_2_pixels).tif');

imshow(I)
close all
Idilate = imdilate(I, ones(3,3));
imshowpair(I, Idilate,'montage')


close all
SE = [0 1 0
      1 1 1
      0 1 0];
Idilate = imdilate(I, SE);
imshowpair(I, Idilate,'montage')

