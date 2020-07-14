
%% sin(x)
clc; clear;
close all
x = -10:0.01:10-0.01;
y = sin(x);
plot(x,y,'b-'); hold on

for index=1:length(y)
    myintegral(index) = trapz(y(1:index));
end
plot(x,myintegral*1/100+(0.840),'k-')
derivada = diff(y);
plot(x(1:end-1),derivada*100,'r-')

%% cos(x)
clc; clear;
close all
x = -10:0.01:10-0.01;
y = cos(x);
plot(x,y,'b-'); hold on

for index=1:length(y)
    myintegral(index) = trapz(y(1:index));
end
plot(x,myintegral*1/100+(0.544),'k-')
derivada = diff(y);
plot(x(1:end-1),derivada*100,'r-')

%% sinc(x)
clc; clear;
close all
x = -10:0.01:10-0.01;
y = sinc(x);
plot(x,y,'b-'); hold on

for index=1:length(y)
    myintegral(index) = trapz(y(1:index));
end
plot(x,myintegral*1/100+0,'k-')
derivada = diff(y);
plot(x(1:end-1),derivada*100,'r-')

%% degrau unitario(x)
clc; clear;
close all
x = -10:0.01:10-0.01;
y = heaviside(x);
plot(x,y,'b-'); hold on

for index=1:length(y)
    myintegral(index) = trapz(y(1:index));
end
plot(x,myintegral*1/100+0,'k-')
derivada = diff(y);
plot(x(1:end-1),derivada*100,'r-')

%% triangulo(x)
clc; clear;
close all
x = -10:0.01:10-0.01;
y = triangularPulse(x);
plot(x,y,'b-'); hold on

for index=1:length(y)
    myintegral(index) = trapz(y(1:index));
end
plot(x,myintegral*1/100+0,'k-')
derivada = diff(y);
plot(x(1:end-1),derivada*100,'r-')

%% rectangular(x)
clc; clear;
close all
x = -10:0.01:10-0.01;
y = rectangularPulse(x);
plot(x,y,'b-'); hold on

for index=1:length(y)
    myintegral(index) = trapz(y(1:index));
end
plot(x,myintegral*1/100+0,'k-')
derivada = diff(y);
plot(x(1:end-1),derivada*100,'r-')

