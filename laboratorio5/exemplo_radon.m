I = zeros(100,100);
I(25:75, 25:75) = 1;

%I2 = zeros(100,100);
I(26:74, 26:74) = 0;

figure, imshow(I,[])
%Calculate the Radon transform.

theta = 0:180;
[R,xp] = radon(I,theta);
%Display the transform.

figure;imshow(R,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit')
xlabel('\theta (degrees)')
ylabel('x''')
colormap(gca,hot), colorbar