clear;
clc;
close all;

t = readtable('data/1-t2-20.csv');
x = sqrt(t.l / 1000);
y = t.T ;

scatter(x, y, 50, "filled", "black");
set(gca,'fontsize', 14);
lab1 = ylabel('$T$\,(s)'); 
lab2 = xlabel('$\sqrt{l}$\,(m$^{1/2}$)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--', 'Color', 'Black');

gravstr = sprintf('$y = %.3f x + %.3f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

% obtener medida de la bondad del ajuste
mdl = fitlm(x,y)


