function cost = taxa(xA)
%Fun��o da taxa de convers�o
cost = (1/(1 - xA)^2)^0.6 + 6*((1/(xA))^0.6);
end