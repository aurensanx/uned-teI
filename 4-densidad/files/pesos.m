clear;
clc;
close all;

t = readtable('data/2.csv')
x = t.n;
%y = t.P_v;
%y = t.P_a;
y = t.P_v ./ (t.P_v - t.P_a);

scatter(x, y, 50, "filled", "black");
set(gca,'fontsize', 14);
%lab1 = ylabel('$P_{vac}$\,(N)'); 
%lab1 = ylabel('$P_{agua}$\,(N)'); 
lab1 = ylabel('$P_{vac}/(P_{vac} - P_{agua})$\,(N)'); 
lab2 = xlabel('$n$');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

%P = polyfit(x,y,1);
%yfit = P(1)*x+P(2);
%hold on;
%h = plot(x,yfit,'r--', 'Color', 'Black');

%gravstr = sprintf('$y = %.3f x + %.3f$ ',P(1), P(2));
%l = legend(gravstr, 'Location','north');
%set(l,'Interpreter','latex', 'FontSize', 20);

% obtener medida de la bondad del ajuste
mdl = fitlm(x,y)


