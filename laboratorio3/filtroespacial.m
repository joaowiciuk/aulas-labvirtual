function g = filtroespacial(f,w)
% minha ajuda aplicacao de filtro 
% filtroespacial(f,w)
%exemplo:  w = 1/9*[1 1 1; 1 1 1; 1 1 1];
%            f = double (imread('lena.bmp'));
%  g   = filtroespacial(f,w)
[M N] =  size(f);
f = [zeros(M,2) f zeros(M,2) ];
g=zeros(3,M+2+2);


for x = 2:(N-1+2+2)
    h  = f(1:3,x-1:x+1).*w;
    val = sum(h(:)); 
    g(2, x)= val;
end
g = g(:,3:N+2);
figure;imshow(g)


