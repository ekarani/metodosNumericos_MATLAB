%Main
clear
clc

global R pc Tc T p a b vl vu vr

parameters

vl = input('Insira sua estimativa inferior: ');
vu = input('Insira sua estimativa superior: ');

%vl = 2.9e-3;
%vu = 2.7e-3;

vr = (vl+vu)/2;

solver

fprintf('A raiz da função está próximo de %.7f\n',vr)

