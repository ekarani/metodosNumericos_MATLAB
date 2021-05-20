clear
clc

Parametros1

Psat1 = @(T) 10^(Ab - (Bb/(Cb+T)));

Psat2 = @(T) 10^(At - (Bt/(Ct+T)));

y1 = [];
y2 = [];

for tt = 80.1:0.01:110.6
   
   x = Psat1(tt)*x1/P;
   y = Psat2(tt)*(1 - x1)/P;

   y1 = [y1 x];
   y2 = [y2 y];

end

plot(y1,y2)  
