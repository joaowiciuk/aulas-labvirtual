% testar os primeiros n numeros perfeitos
clc; clear; 
num_max=33550337;

tic
for index=2:520
    N = (2^index)*(2^(index+1)-1); 
    srtN=num2str(N,'%100.0f');
    disp( ['>>>>>' num2str(N) '  = ' srtN] )
    if isprime(index+1) 
    %disp([dec2bin(N) ' zeros='   num2str(numel(findstr(dec2bin(N) ,'0'))) '  index = ' num2str(index) ' isprime(index+1)=' num2str(isprime(index+1) )]);     
    
    Nends=str2double(srtN(end-1:end));
    % Édouard Lucas refinou a afirmação de Nicomachus de que os números perfeitos terminariam em 6 ou 8 provando que os números perfeitos pares terminam em 
    % 16, ou 28, ou 36, ou 56, ou 76, ou 96
        if Nends == 16 ||Nends == 28 ||Nends == 36 ||Nends == 56 ||Nends == 76 ||Nends == 96
            tic
            if numero_perfeito3(N)
                disp([ num2str(N) ' e'' perfeito']);
            end
            toc
        end
     end
end

toc

% Os dez menores números perfeitos são os seguintes:
% 
% ✓ 6
% ✓ 28
% ✓ 496 
% ✓ 8128 
% ✓ 33550336
% ✓ 8589869056
% ✓ 137438691328
% ✓ 2305843008139952128
% ✓ 2658455991569831744645692615953842176
% ✓ 191.561.942.608.236.107.294.793.378.084.303.638.130.997.321.548.169.216
% Os números perfeitos não são comuns, até o momento somente 49 números perfeitos são conhecidos, 
% e apenas com o aparecimento dos computadores foi possível encontrar grandes números perfeitos. 
% Bem, se você se impressionou com os 54 dígitos do décimo número perfeito, descoberto em 1911, 
% saiba que 39 números perfeitos maiores do que ele já foram descobertos. 
% O mais recente entrou para a lista dos maiores números perfeitos já descobertos
% em janeiro de 2016 e tem mais de 44 milhões de dígitos: 2^74207280 × (2^74207281 – 1).

% https://en.wikipedia.org/wiki/List_of_perfect_numbers