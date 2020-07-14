function saida = numero_perfeito(N)
%verifica se o numero N inteiro � perfeito
divisores = zeros(N,1);
index=1;

for n= 2:N   
    if mod(N, n) == 0      
        divisores(index) =  N/n;
    else
        continue;
    end
    index=index+1;
end

if sum(divisores)==N
    disp ('N => numero perfeito')
    saida = 1;
else
    saida = 0;
end
