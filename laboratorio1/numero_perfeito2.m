function saida = numero_perfeito2(N)
%verifica se o numero N inteiro � perfeito
div_prop = [];

for n= 2:N   
    if mod(N, n) == 0      
        div_prop =  sum([div_prop N/n]);
    end
end

% n =2:N;
% div_prop = (N./n).*(~boolean(mod(N,n)));

if div_prop== N
    %disp ('N => numero perfeito')
    saida = 1;
else
    saida = 0;
end


