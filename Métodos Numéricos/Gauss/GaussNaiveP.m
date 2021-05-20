function x = GaussNaiveP(A,b)

[m,n] = size(A);

Ab = [A b];

na = n + 1;

for ii = 1 : n - 1
    
    
    
    
    for jj = ii + 1: n
        
        if Ab(ii,ii) == 0
        column = Ab(:,ii);
        [new,index] = max(column);
        
        aux = Ab(ii,:);
        Ab(ii,:) = Ab(index,:);
        Ab(index,:) = aux;
        
        end
    
    
    
    Ab
    pivot = Ab(ii,ii);
        factor = Ab(jj,ii)/pivot;
        
        Ab(jj,ii:na) = Ab(jj,ii:na) - factor*Ab(ii,ii:na);
    end
end

x = zeros(n,1);
x(n) = Ab(n,na)/Ab(n,n);

for ii = n - 1 : -1 : 1
    x(ii) = (Ab(ii,na) - Ab(ii,ii+1:n)*x(ii+1:n))/Ab(ii,ii);
end


