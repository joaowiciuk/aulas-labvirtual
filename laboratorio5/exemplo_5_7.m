clear;
close all

len=9;theta=0;
PSF = fspecial ( 'motion', len, theta);
%hist(PSF)
g = imfilter ( f , PSF , ' circular' ) ;