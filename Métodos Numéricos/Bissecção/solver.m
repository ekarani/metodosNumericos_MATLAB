%Solver

global R pc Tc T p a b vl vu vr

while abs(redlich(vr))>0.0001
%for n = 1:4
 
    if (redlich(vl))*(redlich(vr))<0
        vu = vr;
    else
        vl = vr;
    end
    
    vr=(vl+vu)/2;
  
   
end

