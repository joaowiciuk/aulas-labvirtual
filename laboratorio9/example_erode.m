I = imread('Fig0905(a)(wirebond-mask).tif');

imshow(I)
close all
Ierode = imerode(I, ones(11,11));
imshowpair(I, Ierode)
figure; imshow(Ierode)

close all
Ierode = imerode(I, ones(15,15));
imshowpair(I, Ierode)
figure; imshow(Ierode)

close all
Ierode = imerode(I, ones(45,45));
imshowpair(I, Ierode)
figure; imshow(Ierode)

