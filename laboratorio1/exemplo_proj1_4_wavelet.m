%% Projeto 1
%% Autor: eu

%% Projeto 1.4
%  descricao do projeto Projeto 
%% mostrar um sinc de x fourier
close all; clear
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = sinc(2*pi*x); % sinc(x)
figure
plot(x, y)  % graficar o sinc

[a,d] = haart(y,4);         

figure

subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)





