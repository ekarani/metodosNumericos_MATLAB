function x = GaussPivot(A,b)
% GaussPivot: Gauus elimination pivoting

[m,n] = size(A);
    
if m ~= n
    error('A matriz deve ser quadrada')
end

nb = n + 1;
Aug = [A b];

for kk = 1:n-1
    %pivotamento parcial
    
    [mm,nn] = max(abs(Aug(kk:n,kk)));
    ipr = nn + kk - 1;
    
    if ipr ~= kk
        Aug([kk,ipr],:) = Aug([ipr,kk]),:);
    end
    
    for ii = kk+1:n
        factor = Aug(ii,kk:nb)/Aug(kk,kk);
        Aug(ii,kk:nb) = Aug(ii,kk:nb) - factor*Aug(kk,kk:nb);
    end
end

x = zeros(n,1);
x(n) = Aug(n,nb)/Aug(n,n);

for ii = n-1:-1:1
    x(ii) = (Aug(ii,nb)) - Aug(ii,ii+1:n)*x(ii+1:n))/Aug(ii,ii);
end

end