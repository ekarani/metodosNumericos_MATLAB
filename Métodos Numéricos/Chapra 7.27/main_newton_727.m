%% Problema 7.27 (CHAPRA - CANALE)
%% Programa Principal (M�todo de Newton)
%% Limpando mem�ria e comandos
clc;
clear all;
%% Plota o gr�fico
y = linspace(-1,1,100);
Cost = (1./(1 - y).^2).^0.6 + 6.*((1./(y)).^0.6);
plot(y,Cost,'k-','LineWidth',2);
xlabel('\bfConvers�o(xA)');
ylabel('\bfCusto');
title('\bfGr�fico do Custo em fun��o da Convers�o (xA)');
%% Entrada de dados
%Recebe a estimativa inicial
x0  = input('Entre com a estimativa inicial (x0):');
%Chama o solver
[Opt,Fobj,iter] = solvernewton_727(@taxa,x0);
%% Sa�da de dados
%Imprime os resultados
fprintf('O ponto �timo da fun��o objetivo � %8.4f\n',Opt);
fprintf('O valor da fun��o objetivo no ponto �timo � %8.4f\n',Fobj);
fprintf('O n�mero de itera��es necess�rias para encontrar o ponto �timo foi %8.4f\n',iter);
%%
