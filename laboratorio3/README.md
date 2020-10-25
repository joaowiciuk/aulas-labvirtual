# Laboratório 3
## Sobre
* Transformações de intensidade e filtragem espacial.
* Processamento de histograma
* Filtros espaciais de suavização e aguçamento
* Realce espacial

## Conhecimentos aplicados
  * Transformações espaciais
  * Técnicas de transformação de intensidade
  * Manipulação de histograma de imagem
  * Construção de filtros espaciais
  * Convolução e correlação espaciais
  
## Principais funções utilizadas neste laboratório
### Funções matriciais
  * Preencher com a unidade - *ones()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/ones.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/ones.html)
  * Preencher com zeros - *zeros()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/zeros.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/zeros.html)
  * Somar - *sum()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/sum.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/sum.html)
  * Retorna o maior elemento de um conjunto - *max()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/max.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/max.html)
  
### Funções de conversão
  * Conversão de decimal para binário - *dec2bin()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/dec2bin.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/dec2bin.html)
  * Conversão de string para double - *str2double()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/str2double.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/str2double.html)
  * Conversão de um arranjo de números para arranjo de caracteres - *num2str()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/num2str.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/num2str.html)
  * Conversão de binário para decimal - *bin2dec()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/bin2dec.html), [Octave](https://octave.sourceforge.io/octave/function/bin2dec.html)
### Funções de manipulação de imagem
  * Ler imagem - *imread()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/imread.html?s_tid=srchtitle), [Octave](https://octave.org/doc/v4.2.1/Loading-and-Saving-Images.html#Loading-and-Saving-Images)
  * Converter imagem para uint8 - *im2uint8()* - [MATLAB](https://www.mathworks.com/help/images/ref/im2uint8.html), [Octave](https://octave.sourceforge.io/image/function/im2uint8.html)
  * Converter imagem para double - *im2double()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/im2double.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/im2double.html)
  * Filtrar imagem - *imfilter()* - [MATLAB](https://www.mathworks.com/help/images/ref/imfilter.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/imfilter.html)
  * Filtragem mediana 2D - *medfilt2()* - [MATLAB](https://www.mathworks.com/help/images/ref/medfilt2.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/medfilt2.html)
  * Equaliza o histograma de uma imagem em escala de cinza - *histeq()* - [MATLAB](https://www.mathworks.com/help/images/ref/histeq.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/histeq.html)
  * Visualizar imagem - *imshow()* - [MATLAB](https://www.mathworks.com/help/images/ref/imshow.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/imshow.html)
  * Ajustar intensidade - *imadjust()* - [MATLAB](https://www.mathworks.com/help/images/ref/imadjust.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/imadjust.html)
  * Histograma de imagem - *imhist()* - [MATLAB](https://www.mathworks.com/help/images/ref/imhist.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/imhist.html)
  * Complemento (negativo) de imagem - *imcomplement()* - [MATLAB](https://www.mathworks.com/help/images/ref/imcomplement.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/image/function/imcomplement.html)
  * Gráfico de conjunto de dados discretos - *stem()* - [MATLAB](https://www.mathworks.com/help/matlab/ref/stem.html?s_tid=srchtitle), [Octave](https://octave.sourceforge.io/octave/function/stem.html)
### Funções do usuário
  * Declaração de funções - [MATLAB](https://www.mathworks.com/help/matlab/ref/function.html?s_tid=srchtitle), [Octave](https://octave.org/doc/v4.2.1/Defining-Functions.html)
