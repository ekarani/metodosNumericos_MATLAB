function cost = taxa(xA)
%Função da taxa de conversão
cost = (1/(1 - xA)^2)^0.6 + 6*((1/(xA))^0.6);
end