%% Alargamento de contraste
%O alargamento de contraste é um proces-
%so que expande a faixa de níveis de intensidade de uma
%imagem de modo a incluir todo o intervalo de intensida-
%des do meio de gravação ou do dispositivo de exibição.
%A Figura 3.10(a) mostra uma transformação típica
%utilizada para o alargamento de contraste. As posições
%dos pontos (r 1 , s 1 ) e (r 2 , s 2 ) controlam o formato da função
%de transformação. Se r 1 = s 1 e r 2 = s 2 , a transformação é
%uma função linear que não produz nenhuma alteração
%nos níveis de intensidade. Se r 1 = r 2 , s 1 = 0 e s 2 = L – 1, a
%transformação se torna uma função de limiarização que cria
%uma imagem binária, como ilustrado na Figura 3.2(b). Os
%valores intermediários de (r 1 , s 1 ) e (r 2 , s 2 ) produzem vários
%graus de expansão dos níveis de intensidade da imagem
%de saída, afetando, assim, seu contraste. Em geral, pres-
%supõe-se que r 1 ≤ r 2 e s 1 ≤ s 2 , de forma que a função tenha
%um valor único e seja monotonicamente crescente. Essa
%condição mantém a ordem dos níveis de intensidade,
%prevenindo, assim a criação de artefatos de intensidade
%na imagem processada.
%A Figura 3.10(b) mostra uma imagem de 8 bits com
%baixo contraste. A Figura 3.10(c) mostra o resultado do
%alargamento de contraste, obtido definindo (r 1 , s 1 ) = (r mín , 0)
%e (r 2 , s 2 ) = (r máx , L – 1), onde r mín e r máx são os níveis mí-
%nimo e máximo de intensidade da imagem, respectiva-
%mente. Dessa forma, a função de transformação alargou
%linearmente os níveis de seu intervalo original para o
%intervalo completo [0, L – 1]. Por fim, a Figura 3.10(d)
%mostra o resultado da aplicação da função de limiariza-
%ção definida anteriormente, com (r 1 , s 1 ) = (m, 0) e (r 2 , s 2 )
%= (m, L – 1), sendo m o nível médio de intensidade da
%imagem. A imagem original na qual esses resultados se
%baseiam é uma imagem de grãos de pólen, gerada por
%microscópio eletrônico de varredura e ampliada aproxi-
%madamente 700 vezes.

close all; clc;clear % limpar a memoria e fechar figuras
%pkg load image %% octave

%% leitura da imagen
f = imread('Fig0310(b)(washed_out_pollen_image).bmp');

  r1 =  91;  s1 =  50;
  r2 = 137;  s2 = 200;  
  
  x =0:255;
  
  vector = [ 0 0
             r1,s1
             r2,s2
            255,255]; 
            
  y = uint8(round(interp1(vector(:,1),vector(:,2),x)));

%% visualizar a funcao de intensidade especifica 
figure; plot(x,y)

%% visualizar a imagem original 
figure; imshow(f,[0 255]); title('Figura 3.10(b) original')
  
g = zeros(size(f));

for x = 0:255
  g((f == x)) = y(x+1);   
end
  g = mat2gray(g);
figure; imshow(g,[])






