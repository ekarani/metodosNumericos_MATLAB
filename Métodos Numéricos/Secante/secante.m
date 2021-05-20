
%x0 %xi-1
%xi
%x1 %xi+1
x0 = 2.9e-3;
xi = 2.7e-3;

x1 = xi - (redlichk(xi)*(xi - x0))/(redlichk(xi) - redlichk(x0));

d = 0;

while abs(x1-xi) > 1e-7
    
    d = d + 1;
    
    if d > 10
        
        disp (' ')
        
        disp ('Número máximo de iterações atingido. Nenhuma raiz encontrada')
        
        break
        
    end
    
    x0 = xi;
    
    xi = x1;
        
    x1 = xi - (redlichk(xi)*(xi - x0))/(redlichk(xi) - redlichk(x0));
    
end

disp(xi)