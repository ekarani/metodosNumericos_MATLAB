Tb2 = 80.1;
Tb1 = 110.6;

Parametros1

xl = Tb1;
xu = Tb2;
xr = xu - ((xl-xu)*pontodebolha(xu))/(pontodebolha(xl)-pontodebolha(xu));
while abs(pontodebolha(xr))>0.01
    if (pontodebolha(xl))*(pontodebolha(xr))<0
        xu=xr;
    else
        xl=xr;
    end
    xr = xu - ((xl-xu)*pontodebolha(xu))/(pontodebolha(xl)-pontodebolha(xu));
end
disp(xr)