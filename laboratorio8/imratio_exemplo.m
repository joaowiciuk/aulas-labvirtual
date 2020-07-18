f1 =  imread ('lena_gray_512.tif');
cr =imratio ( f1 , 'lena_gray_512.tif')
 
 %%
f2 = 'lena_gray_512.jpg';
imwrite(f1,f2);
 
r =imratio ( f1 , f2)


 
 
  

 
