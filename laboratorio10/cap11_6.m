close all;
clc; clear;
f = imread('building.tif');
f =edge(f);


imshow(f,[]);
[H,theta,rho] = hough(f,'Theta',-90:0.2:90-0.2);

figure; imshow(H, [] , 'XData',theta , 'YData' , rho , 'InitialMagnification' , 'fit' )
axis on , axis normal
xlabel ( '\theta' ) , ylabel ( '\rho' )

NumPeaks = 50;
peaks = houghpeaks(H, NumPeaks)
hold on
plot(theta(peaks(:,2)),rho(peaks(:,1)), ...
'linestyle','none','marker','s','color','w')

lines = houghlines(f,theta,rho,peaks);
figure , imshow (f,[]) , hold on
for k = 1 : length ( lines )
    xy = [ lines(k).point1 ; lines(k).point2 ] ;
    plot(xy(:,1),xy(:,2),'LineWidth',4,'Color' , [ .8 .0 .0 ] ) ;
end
    



