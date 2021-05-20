%% Problema 7.27 (CHAPRA - CANALE)
%% Programa Principal (Método de Newton)
%% Limpando memória e comandos
clc;
clear all;
%% Plota o gráfico
y = linspace(-1,1,100);
Cost = (1./(1 - y).^2).^0.6 + 6.*((1./(y)).^0.6);
plot(y,Cost,'k-','LineWidth',2);
xlabel('\bfConversão(xA)');
ylabel('\bfCusto');
title('\bfGráfico do Custo em função da Conversão (xA)');
%% Entrada de dados
%Recebe a estimativa inicial
x0  = input('Entre com a estimativa inicial (x0):');
%Chama o solver
[Opt,Fobj,iter] = solvernewton_727(@taxa,x0);
%% Saída de dados
%Imprime os resultados
fprintf('O ponto ótimo da função objetivo é %8.4f\n',Opt);
fprintf('O valor da função objetivo no ponto ótimo é %8.4f\n',Fobj);
fprintf('O número de iterações necessárias para encontrar o ponto ótimo foi %8.4f\n',iter);
%%
