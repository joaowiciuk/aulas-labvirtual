clear; clc; close all


mycell{1} = [ 0 0 0 ; 
              0 0 0 ; 
              0 0 0 ];
          
mycell{2} = [ 0 1 0 ; 
              0 0 0 ; 
              0 0 0 ];       
                    
mycell{3} = [ 0 1 0 ; 
              0 0 0 ; 
              0 0 1 ];
          
mycell{4} = [ 1 1 0 ; 
              0 0 0 ; 
              0 0 1 ];   
         
mycell{5} = [ 1 1 0 ; 
              0 0 0 ; 
              1 0 1 ];              
          
mycell{6} = [ 1 1 1 ; 
              0 0 0 ; 
              1 0 1 ]; 
          
mycell{7} = [ 1 1 1 ; 
              0 0 1 ; 
              1 0 1 ];   
          
mycell{8} = [ 1 1 1 ; 
              0 0 1 ; 
              1 1 1 ];

mycell{9} = [ 1 1 1 ; 
              1 0 1 ; 
              1 1 1 ]; 
          
mycell{10}= [ 1 1 1 ; 
              1 1 1 ; 
              1 1 1 ];     

f = imread('lena.bmp');

[M,N] = size(f);
g = ceil(((f)+1)/(25.5+1));

I2 = (zeros(M*3,N*3));

tic
for row = 1:M
    for col = 1:N 
        I2(row*3-2:row*3,col*3-2:col*3) = mycell{g(row,col)};
    end
end
toc

imshow(I2)  
      
          
