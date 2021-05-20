
function y = pontodebolha(T)
Parametros1

Psat1 = 10^(Ab - (Bb/(Cb+T)));

Psat2 = 10^(At - (Bt/(Ct+T)));

y = Psat1*x1/P + Psat2*(1-x1)/P - 1;

end