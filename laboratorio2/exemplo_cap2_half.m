clear; clc; close all

f = imread('lena.bmp');

[M,N] = size(f);

im_resposta_row =[];
im_resposta =[];

tic
for row = 1:M
    im_resposta_row =[];    
    for col = 1:N        
        pixel = f(row,col);
        if pixel >=0 && pixel < 26
            submatriz = [0 0 0 ; 0 0 0; 0 0 0];
        elseif pixel >= 26 && pixel < 52
            submatriz = [0 1 0 ; 0 0 0; 0 0 0];
        elseif pixel >= 52 && pixel < 78
            submatriz = [0 1 0 ; 0 0 0; 0 0 1];
        elseif pixel >= 78 && pixel < 104
            submatriz = [1 1 0 ; 0 0 0; 0 0 1];
        elseif pixel >= 104 && pixel < 130
            submatriz = [1 1 0 ; 0 0 0; 1 0 1];
        elseif pixel >= 130 && pixel < 156
            submatriz = [1 1 1 ; 0 0 0; 1 0 1];
        elseif pixel >= 156 && pixel < 182
            submatriz = [1 1 1 ; 0 0 1; 1 0 1];
        elseif pixel >= 182 && pixel < 208
            submatriz = [1 1 1 ; 0 0 1; 1 1 1];
        elseif pixel >= 208 && pixel < 234
            submatriz = [1 1 1 ; 1 0 1; 1 1 1];
        else
            submatriz = [1 1 1 ; 1 1 1; 1 1 1];
        end
        im_resposta_row = [(im_resposta_row) (submatriz)];
    end
   im_resposta = [im_resposta; im_resposta_row]; 
end
toc

g = imresize(im_resposta,[M N]);


imshow(im_resposta)    