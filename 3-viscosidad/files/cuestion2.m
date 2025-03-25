syms t rho;

eta = 0.084;
g = 9.81;
r = 0.0022;
%rho_b = 1000;
rho_b = 7850;
alpha = 9*eta / (2 * r^2 * rho_b);
beta = (1-rho/rho_b)* g / alpha^2;
z_0 = 0.2;
syms z(t,rho);
z = z_0 + beta* (1 - exp(-alpha*t)-alpha*t);
eval(subs(z, [t,rho], [0.326,920]))


