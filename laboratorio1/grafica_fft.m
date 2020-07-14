function [ minha_fft ,f ] = grafica_fft(Ts, sinal, arg_plot )

% esticar o sinal
%sinal = [sinal zeros(1,1e5)];

%calcula a fft, modulo, faz desclocamento (shift) e normaliza (N pontos)
minha_fft = fft(sinal);
minha_fft_ponderada = fftshift(abs(minha_fft)/numel(sinal));

f = (-numel(minha_fft_ponderada)/2) : (numel(minha_fft_ponderada)/2-1);
f= f.*(1/Ts)/numel(minha_fft_ponderada);

plot (f,minha_fft_ponderada ,arg_plot);
%axis ([ fmin fmax 0 max(minha_fft)*1.1])

end

