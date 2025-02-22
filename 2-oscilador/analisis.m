
t = readtable('files/data/1-y.csv');
x = t.m;
y = t.y_y0;

scatter(x, y, 50, "filled", "black")
set(gca,'fontsize', 14);
lab1 = ylabel('$y-y_0$ (mm)'); 
lab2 = xlabel('$m$ (g)');
set(lab1,'Interpreter','latex', 'FontSize', 20);
set(lab2,'Interpreter','latex', 'FontSize', 20);

P = polyfit(x,y,1);
yfit = P(1)*x+P(2);
hold on;
h = plot(x,yfit,'r--.', 'Color', 'Black');

gravstr = sprintf('$y = %.3f x %.3f$ ',P(1), P(2));
l = legend(gravstr)
set(l,'Interpreter','latex', 'FontSize', 20);

fig1 = gca;
exportgraphics(fig1,'files/images/fig1.eps','Resolution',300);
