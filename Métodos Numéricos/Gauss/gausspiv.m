function x=gausspiv(mat)
[~,c]=size(mat);
a=mat;
a(:,c)=[];
b=mat(:,c);
n=length(b);
for k=1:(n-1)
    max=abs(a(k,k));
    l=k;
    for ii=(k+1):n
        if abs(a(ii,k))>max
            max=abs(a(ii,k));
            l=ii;
        end
    end
    if l~=k
        
            aux=a(l,:);
            a(ii,:)=a(k,:);
            a(k,:)=aux;
        
        aux=b(l);
        b(l)=b(k);
        b(k)=aux;
    end
    mat=[a b];
  x=gauss(mat);
end
end
