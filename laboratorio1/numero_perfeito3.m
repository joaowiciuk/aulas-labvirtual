function saida = numero_perfeito3(n)
%verifica se o numero N inteiro � perfeito
sum_div_prop = 1;
ind = 2;

while (ind^2<= n)
    if mod(n, ind) == 0
        sum_div_prop = sum_div_prop + ind + n/ind;
    end
    ind = ind + 1;
end



% n =2:N;
% div_prop = (N./n).*(~boolean(mod(N,n)));

if sum_div_prop == n
    %disp ('N => numero perfeito')
    saida = 1;
else
    saida = 0;
end


