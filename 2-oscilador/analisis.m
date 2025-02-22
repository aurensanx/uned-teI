
t = readtable('files/data/1-y.csv');
x = t.m;
y = t.y_y0;

scatter(x, y, 40, "filled", "black")
set(gca,'fontsize', 14);
lab1 = ylabel('$y-y_0$ (mm)'); 
lab2 = xlabel('$m$ (g)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
plot(x,yfit,'r--.', 'Color', 'Black');

fig1 = gca;
exportgraphics(fig1,'files/images/fig1.eps','Resolution',300);
