close all;clc;clear

P = phantom(128);
theta = 0:179;
        R = radon(P,theta);
        
        figure;imshow(R,[])
colormap(gca,hot), colorbar
        
        I1 = iradon(R,theta);
        I2 = iradon(R,theta,'linear','none');
        figure
        subplot(1,3,1), imshow(P), title('Original')
        subplot(1,3,2), imshow(I1), title('Filtered backprojection')
        subplot(1,3,3), imshow(I2,[]), title('Unfiltered backprojection')
 