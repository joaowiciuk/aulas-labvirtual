I = imread('eight.tif');

figure, imshow(I),
%mynoise ='salt & pepper' 
mynoise = 'speckle'
for intensidade = 0.02:0.05:0.5
    J = imnoise(I,mynoise, intensidade);
   figure, imshow(J), title(['intensidade = ' num2str(intensidade)])
end