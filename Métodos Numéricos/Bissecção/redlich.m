%Model

function y = redlich(v)


global R pc Tc T p a b vl vu vr
y = (R*T)/(v-b) - a/(v*(v+b)*sqrt(T)) - 65000; 

end
