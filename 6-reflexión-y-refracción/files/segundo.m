clear;
clc;
close all; 

t = readtable('data/segundo.csv');

%x = t.incidente;
%y = t.reflejado;

%x = sind(t.incidente);
%y = sind(t.transmitido);

x = t.incidente;
y = t.transmitido;

scatter(x, y, 50, "filled", "black");
set(gca,'fontsize', 14);

%lab1 = ylabel('$\theta_r\,(^{\circ})$');
%lab2 = xlabel('$\theta_i\,(^{\circ})$');

%lab1 = ylabel('sen$$\,\theta_t$');
%lab2 = xlabel('sen$\,\theta_i$');

lab1 = ylabel('$\theta_t\,(^{\circ})$');
lab2 = xlabel('$\theta_i\,(^{\circ})$');

set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--', 'Color', 'Black');

gravstr = sprintf('$y = %.2f x  %.2f$ ',P(1), P(2));
l = legend(gravstr, 'Location','north');
set(l,'Interpreter','latex', 'FontSize', 20);

% obtener medida de la bondad del ajuste
mdl = fitlm(x,y)




% 1 reflexión
%lab1 = ylabel('$\theta_r\,(^{\circ})$'); 
%lab2 = xlabel('$\theta_i\,(^{\circ})$');

% 2 refracción
%lab1 = ylabel('sen$$\,\theta_t$');
%lab2 = xlabel('sen$\,\theta_i$');