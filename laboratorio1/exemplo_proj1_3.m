%% Projeto 1
%% Autor: eu

%% Projeto 1.4
%  descricao do projeto Projeto 
%% mostrar um sinc de x fourier
close all; clear
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = sinc(2*pi*x); % sinc(x)
plot(x, y)  % graficar o sinc

grid on

myintegral = trapz(y);







