
% nao vou usar i ( numero imaginario)
% melhor usar t

t = 1:0.01:100;

alg1 = 8*t.^2;

alg2 = 64.*t.*log2(t);

plot(t,alg1,'r+');hold on % manter na mesma figura
plot(t,alg2,'b-');