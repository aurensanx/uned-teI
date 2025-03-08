clear;
clc;
close all;

t = readtable('data/1-t2-45.csv');
y = t.l / 1000;
x = t.T.^2 ;

scatter(x, y, 50, "filled", "black");
set(gca,'fontsize', 14);
lab1 = xlabel('$T^2$\,(s$^2$)'); 
lab2 = ylabel('$l$\,(m)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--', 'Color', 'Black');

gravstr = sprintf('$y = %.4f x + %.4f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

% obtener medida de la bondad del ajuste
mdl = fitlm(x,y)


