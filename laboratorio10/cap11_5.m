close all;
clc; clear
f = zeros ( 101 , 101 ) ;
f(1 , 1   ) = 1; 
f(1 , 101 ) = 1;
f(101, 1  ) = 1;
f(101, 101) = 1;
f(51 , 51 ) = 1;

imshow(not(f),[]);figure; 
[H,theta,rho] = hough(f) ;

imshow(H, [] , 'XData',theta , 'YData' , rho , 'InitialMagnification' , 'fit' )
axis on , axis normal
xlabel ( '\theta' ) , ylabel ( '\rho' )

NumPeaks = 5
peaks = houghpeaks(H, NumPeaks)
hold on
plot(theta(peaks(:,2)),rho(peaks(:,1)), ...
'linestyle','none','marker','s','color','w')



