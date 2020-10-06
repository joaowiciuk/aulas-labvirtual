%% Laboratorio 1
%  funções basicas

%% mostrar um sin de x

close all; clear;clc

x = linspace(-10,10,2000); % variavel x de 2000 pontos

y = sin(x); % sin(x) seno de x
plot(x, y,'r')  % graficar o sin
grid on; hold on;

%% mostrar um cos de x

y = cos(x); % cos(x) coseno de x
plot(x, y,'b')  % graficar o sin
grid on;

%% mostrar um sinc de x
Ts=0.01
x = -10:Ts:10-Ts; 
y = sinc(x); % sinc(x) seno de x
figure;
plot(x, y,'ko')  % graficar o sin
grid on;

%% Pulso unitario
%pkg load symbolic
Ts=0.01
x = -10:Ts:10-Ts; 
y = heaviside(x);
figure;
plot(x, y,'bo-')  % graficar 
grid on;

%% Pulso retangular
y1 = heaviside(x-(-1));
y2 = heaviside(-(x-1));
retangulo = y1.*y2;
figure;
plot(x, y1,'bo-')  % graficar
hold on
plot(x, y2,'ro-')  % graficar o sin
grid on;

%% Pulso triangular
%pkg load signal  (octave)
% y = rectpulse(x);
y =tripuls((1/2)*x);
figure;
plot(x, y,'bo-')  % graficar 

%% Derivada e integral do sinc 
Ts=0.01
x = -10:Ts:10-Ts; 
y = sinc(x); % sinc(x) seno de x
figure;
plot(x, y,'k-')  % graficar o sin
grid on;

%% Derivada
mydiff = diff(y);
figure;
plot(x(1:end-1), mydiff,'k-')  % graficar o sin
grid on;

%% Integral
myintegral = trapz(y)

myintegralcum = cumtrapz(y);

figure;
plot(x, myintegralcum,'b-')  % graficar o sin
grid on;

%% Aplicar a Transformada de Fourier 
Ts=0.01
t = -10:Ts:10-Ts; 
f = sinc(t); % sinc(t) seno de t
figure;
plot(t, f,'k-')  % graficar o sin
grid on;

%f = retangulo;
F = fft(f);
F = fftshift(F);
Sf = abs(F);
figure; plot(Sf)

%publish('exemplo_fun_basicas.m')




