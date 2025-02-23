clear;
clc;

t = readtable('data/1-y.csv');
x = t.m / 1000;
y = t.y_y0 / 1000;

scatter(x, y, 50, "filled", "black");
set(gca,'fontsize', 14);
lab1 = ylabel('$y-y_0$\,(m)'); 
lab2 = xlabel('$m$\,(kg)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--.', 'Color', 'Black');

gravstr = sprintf('$y = %.3f x %.3f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

mdl = fitlm(x,y)

%fig1 = gca;
%exportgraphics(fig1,'images/fig1.eps','Resolution',300);
