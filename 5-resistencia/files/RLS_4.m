clear;
clc;
close all;

t = readtable('data/RLS.csv')
x = t.Var3;
y = t.Var4;
scatter(x, y, 50, "filled", "black");

set(gca,'fontsize', 14);

lab1 = ylabel('$R$\,(m$\Omega$)'); 
lab2 = xlabel('$L/S\,$(Mm$^{-1}$)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--', 'Color', 'Black');

gravstr = sprintf('$y = %.0f x + %.0f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

% obtener medida de la bondad del ajuste
mdl = fitlm(x,y)
