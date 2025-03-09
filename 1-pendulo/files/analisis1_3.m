clear;
clc;
close all;

t = readtable('data/2-t-45.csv')
y = t.l_real_ / 1000;
x = t.T ;

scatter(x, y, 50, "filled", "black");
set(gca,'xscale','log', 'YScale', 'log');
grid on;
set(gca,'fontsize', 14);
lab1 = xlabel('$T$\,(s)'); 
lab2 = ylabel('$l$\,(m)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(log10(x),log10(y),1);
yfit = P(1)*log10(x)+P(2);
hold on;
h = loglog(x,10.^(yfit),'r--', 'Color', 'Black');

gravstr = sprintf('$y = %.4f x %.4f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

% obtener medida de la bondad del ajuste
mdl = fitlm(log10(x),log10(y))



