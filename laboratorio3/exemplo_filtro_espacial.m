close all; clc; clear
f = [ 6	4	5	6	8 ;
      9	0	4	8	5 ;
      3	2	2	4	2 ;
      9	2	3	6	1 ;
      7	8	9	0	4 ];
      
w = 1/9*[ 1 1 1;
          1 1 1;
          1 1 1 ];
          
g = imfilter(f,w);

figure; imshow(f,[])
figure; imshow(g,[])