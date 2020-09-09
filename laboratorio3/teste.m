close all
clear

%Mostrar degrau unit�rio de x
x = linspace(-10,10,2000); %Variavel X de 2000 pontos
%y = heaviside(x); %step(x)
y = heaviside(x);
figure
plot(x, y) %Plotar o sinc