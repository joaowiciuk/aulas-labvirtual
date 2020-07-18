Ts=0.01;
t=0:Ts:20-Ts;

g = cos(2*pi*1*t);

gn= g;
N = length(gn);
k=0;
Gk =[];
soma =0;
for n = 0:N-1
    soma = soma + gn(n+1)*exp(-2*pi*n*k/N);
end
G(k+1) = soma
