function y = GaussSeidel(A,b,xest)

[m,n] = size(A);
if m ~= n
    error('A matriz deve ser quadrada')
end

for kk = 1:m
    d = A(m,m);
    if d == 0
        error('Não pode haver zero na diagonal da matriz')
    end
end
Emax = 10;
E = [];
while Emax > 1e-6

vectorx = [];

for ii = 1:m
    xx = xest;
    xx(ii) = []; 
    
    aa = A(ii,:);
    aa(ii) = []; 
    
    ax = aa.*xx;
    
    xnew = (b(ii) - sum(ax))/A(ii,ii);
    
    E(ii) = (xnew - xest(ii))/xnew;
    
    xest(ii) = xnew;
    
    vectorx = [vectorx xnew];
end



Emax = max(E);

xest = vectorx;

end

y = vectorx;

end