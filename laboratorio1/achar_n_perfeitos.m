% testar os primeiros n numeros perfeitos
clc; clear; 
N=33550337;
n = 5;
%count = 0;
%while count < n
    for index=1:N
        if numero_perfeito(index)
        disp([ num2str(index) ' e'' perfeito'])
        %count = count+1;
        end
    end
%end
%Teste 


% Os dez menores números perfeitos são os seguintes:
% 
% ✓ 6
% ✓ 28
% ✓ 496 
% ✓ 8.128 
% ✓ 33.550.336
% ✓ 8.589.869.056
% ✓ 137.438.691.328
% ✓ 2.305.843.008.139.952.128
% ✓ 2.658.455.991.569.831.744.645.692.615.953.842.176
% ✓ 191.561.942.608.236.107.294.793.378.084.303.638.130.997.321.548.169.216
% Os números perfeitos não são comuns, até o momento somente 49 números perfeitos são conhecidos, 
% e apenas com o aparecimento dos computadores foi possível encontrar grandes números perfeitos. 
% Bem, se você se impressionou com os 54 dígitos do décimo número perfeito, descoberto em 1911, 
% saiba que 39 números perfeitos maiores do que ele já foram descobertos. 
% O mais recente entrou para a lista dos maiores números perfeitos já descobertos
% em janeiro de 2016 e tem mais de 44 milhões de dígitos: 2^74207280 × (2^74207281 – 1).
