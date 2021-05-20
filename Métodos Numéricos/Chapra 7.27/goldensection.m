%golden section
clear
clc

xupper = input('Insira sua estimativa superior: ');
xlow = input('Insira sua estimativa inferior: ');

R = (sqrt(5) - 1)/2 ;

d = R*(xupper - xlow);

c = 0;
while abs(xupper - xlow) > 0.0001
    x1 = xlow + d;
    x2 = xupper - d;
    
    if taxa(x1)>taxa(x2)
        xupper = x1;
    else
        xlow = x2;
    end
    
    d = R*(xupper - xlow);
    c = c + 1;
end
ft = taxa(x1);
fprintf('O ponto �timo encontrado foi %.4f, para o valor de fun��o %.4f \n',x1,ft)
fprintf('N�mero de itera��es: %d \n',c)
