%Octave: necessário instalar e carregar pacote 'symbolic'
%pkg load symbolic %Octave

%% Autor: eu
% projeto 1 ....

%% Projeto 1.1
% mostrar um seno de x --> $sin(x)$
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = sin(x); % sin(x)
plot(x, y)  % graficar o seno

%% mostrar um sinc de x
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = sinc(x); % sinc(x)
plot(x, y)  % graficar o sinc

%% mostrar um degrau unitario de x
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = heaviside(x); % degrau unitario(x)
plot(x, y, '-ro')  % graficar o degrau unitario

%% mostrar um pulso exponencial de x
x = linspace(-10,10,2000); % variavel x de 2000 pontos
y = exp(x); % pulso exponencial(x)
plot(x, y)  % graficar o degrau unitario

%% Projeto 1.2

%% mostrar um degrau unitario de x e dilatar e deslocar
x = linspace(-10,10,2000); % variavel x de 2000 pontos
d=2
x0=1.5
y    = sin(x); % degrau unitario(x)
ydil = sin(d*x);
ydes = sin(x-x0);

plot(x, y, '-b')  % graficar o degrau unitario original
hold on
plot(x, ydil, '.r')  % graficar o degrau unitario dil
plot(x, ydes, '-k')  % graficar o degrau unitario  des



