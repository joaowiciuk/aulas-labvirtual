%% Projeto 1
%% Autor: eu

%% Projeto 1.4
%  descricao do projeto Projeto 
%% mostrar um sinc de x fourier
close all; clear
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = sin(2*pi*x); % sinc(x)
figure
plot(x, y)  % graficar o sinc

          [c,info] = fwt(y,'db8',2);
         figure
         plotwavelets(c,info,1/(x(2)-x(1)),'dynrange',90);


figure,
plot(c)






