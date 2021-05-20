function [Opt,Fobj,iter] = solvernewton_727(taxa,x0)
iter = 0;
imax = 100;
h    = 1e-6;

while  iter < imax
iter = iter + 1;
 
f1 = taxa(x0);
f2 = taxa(x0 + h);
f3 = taxa(x0 - h);
 
x0 = x0 - (((f2 - f3)*h)/(2*(f2 - 2*f1 + f3))); 

end

Opt = x0;
Fobj = taxa(x0);
iter;

end
 