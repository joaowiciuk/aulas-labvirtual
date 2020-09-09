close all; clear;

im1 = imread('angiography_live_ image.bmp');
im2 = imread('angiography_mask_image.bmp');

imdiff= double(im2)-double(im1);

imshow(imdiff,[])

myROI = imdiff(317:406,130:215);

figure;
imshow(myROI,[])