
%% sin(x)
clc; clear;
close all
Ts=0.01;
x = -10:Ts:10-Ts;
g=sin(2*pi*x);
[minhafft]=grafica_fft(Ts,g,'r');
g_reconstruido = ifft(minhafft);
figure;plot(x,g);hold on; plot(x, g_reconstruido, '.r')

signals = g;
[a,d] = haart(signals,4);
figure;
subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)
%% cos(x)
clc; clear;
close all
Ts=0.01;
x = -10:Ts:10-Ts;
g=cos(2*pi*x);
[minhafft]=grafica_fft(Ts,g,'r');
g_reconstruido = ifft(minhafft);
figure;plot(x,g);hold on; plot(x, g_reconstruido, '.r')

signals = g;
[a,d] = haart(signals,4);
figure;
subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)

%% sinc(x)
clc; clear;
close all
Ts=0.01;
x = -10:Ts:10-Ts;
g=sinc(2*pi*x);
[minhafft]=grafica_fft(Ts,g,'r');
g_reconstruido = ifft(minhafft);
figure;plot(x,g);hold on; plot(x, g_reconstruido, '.r')

signals = g;
[a,d] = haart(signals,4);
figure;
subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)
%% degrau unitario(x)
clc; clear;
close all
Ts=0.01;
x = -10:Ts:10-Ts;
g=heaviside(x);
[minhafft]=grafica_fft(Ts,g,'r');
g_reconstruido = ifft(minhafft);
figure;plot(x,g);hold on; plot(x, g_reconstruido, '.r')

signals = g;
[a,d] = haart(signals,4);
figure;
subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)

%% triangulo(x)
clc; clear;
close all
Ts=0.01;
x = -10:Ts:10-Ts;
g=triangularPulse(x);
[minhafft]=grafica_fft(Ts,g,'r');
g_reconstruido = ifft(minhafft);
figure;plot(x,g);hold on; plot(x, g_reconstruido, '.r')

signals = g;
[a,d] = haart(signals,4);
figure;
subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)

%% rectangular(x)
clc; clear;
close all
Ts=0.01;
x = -10:Ts:10-Ts;
g=rectangularPulse(x);
[minhafft]=grafica_fft(Ts,g,'r');
g_reconstruido = ifft(minhafft);
figure;plot(x,g);hold on; plot(x, g_reconstruido, '.r')

signals = g;
[a,d] = haart(signals,4);
figure;
subplot(5,1,1);plot(d{1})
subplot(5,1,2);plot(d{2})
subplot(5,1,3);plot(d{3})
subplot(5,1,4);plot(d{4})
subplot(5,1,5);plot(a)