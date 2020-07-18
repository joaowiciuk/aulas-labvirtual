%this is the function for implementing the moving average threshold
%algorithm. It is created by Gonzalez and commented by Lin Zhang, SSE,
%Tongji University
function g = movingThresh(f,n,K)
%f is the iput gray-scale image; n is the number of the pixels involved for
%averaging; K is the constant for thesholding segmentation
f=single(f);
[M,N]=size(f);

%preliminairies
if (n<1)|| (rem(n,1)~=0)
    error('n must be an integer >=1.')
end
if K<0 || K>1
    error('K must be a fraction in the range [0, 1].')
end
%Flip every other row of f to produce the equivalent of a zig-zag scanning
%pattern. Convert image to a vector
f(2:2:end,:)=fliplr(f(2:2:end,:));
f=f';
f=f(:)';

%compute the moving average
maf=ones(1,n)/n;
ma=filter(maf,1,f);

%perform thresholding
g=f>K*ma;
%go back to the image format
g=reshape(g,N,M);
g = g';
%flip alternate row back
g(2:2:end,:)=fliplr(g(2:2:end,:));