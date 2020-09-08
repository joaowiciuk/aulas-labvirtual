
clear;clc;close all

%No Octave o pacote 'signal' precisa ser instalado e depende do pacote 'control'
%No Ubuntu, é necessário também ter liboctave-dev instalada
pkg load signal %Octave

dilat =1/2
deslo =1

Ts=0.01;
t = -5:Ts:5-Ts;
%g1 = @(t) triangularPulse(t); %Matlab
g1 = @(t) tripuls(t); %Octave
g2 = g1(dilat*(t-deslo));
plot(t,g1(t),'-b.');hold on;
plot(t,g2,'-r.');grid on;% axis([-3.5 3.5 -1 1])
