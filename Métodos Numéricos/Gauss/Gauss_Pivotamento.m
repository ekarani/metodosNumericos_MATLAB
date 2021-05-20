function x = Gauss_Pivotamento(A, b)

C = [A b]; % Matriz estendida 

[n,~] = size(C); % Número de equações (variáveis)

for k = 1:n-1 % Início da etapa de eliminação
    
    for i = k+1:n
        
        % Pivotamento Parcial
        
        if abs (C(i,k)) > abs(C(k,k))
            
            Aux = C(k,:);
            C(k,:) = C(i,:);
            C(i,:) = Aux;
            
        end
        
    end
    
    for i = k+1:n
        
        factor = C(i,k)/C(k,k);
        
        C(i,:) = C(i,:) - C(k,:)*factor;
        
    end
    
end

A = C(:,1:n); 
b = C(:,n+1); % Formando a nova matriz A e o novo vetor b;

x(n) = b(n)/A(n,n); % Valor da i-ésima variável

for i = n-1:-1:1 % Determinação das demais variáveis
    
    sum = 0;
    
    for j = i+1:n
        
        sum = sum + A(i,j)*x(j);
        
    end
    
    x(i) = (b(i) - sum)/A(i,i);
    
end

