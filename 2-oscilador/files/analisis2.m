clear;
clc;
close all;

t = readtable('data/3-t2.csv');
x = (t.m + 0) / 1000
y = t.T_2

scatter(x, y, 50, "filled", "black");
set(gca,'fontsize', 14);
lab1 = ylabel('$T^2$\,(s$^2$)'); 
lab2 = xlabel('$m + m_0$\,(kg)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--', 'Color', 'Black');

gravstr = sprintf('$y = %.2f %.2f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

mdl = fitlm(x,y)

%fig1 = gca;
%exportgraphics(fig1,'images/fig2.eps','Resolution',300);
