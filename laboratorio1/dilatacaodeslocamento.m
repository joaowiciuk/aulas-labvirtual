
clear;clc;close all

dilat =1/2
deslo =1

Ts=0.01;
t = -5:Ts:5-Ts;
g1 = @(t) triangularPulse(t); 
g2 = g1(dilat*(t-deslo));
plot(t,g1(t),'-b.');hold on;
plot(t,g2,'-r.');grid on;% axis([-3.5 3.5 -1 1])
