function x=gauss(mat)

aa=mat;

[l,c]=size(mat);

for kk=1:(l-1)
    
    for ii=(kk+1):l
        fator=mat(ii,kk)/mat(kk,kk);
        
        for jj=1:c
            mat(ii,jj)=mat(ii,jj) - fator*mat(kk,jj);
        end
    end
end


x=zeros(l,1);
x(l)=mat(l,c)/mat(l,c-1);

for ii=(l-1):-1:1
    soma=mat(ii,c);
    
    for jj=1:(c-1)
        soma= soma - mat(ii,jj)*x(jj);
    end
    
    x(ii)=soma/mat(ii,ii);
end


end
