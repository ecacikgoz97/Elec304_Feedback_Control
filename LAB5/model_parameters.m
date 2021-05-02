clc;

Ts = 0.01;
Tp = 1.69;
theta_s = -28.95;
dmd = 35;

w = (2*pi*Ts) / Tp;
b = -(tan(w)/Ts)^2;
g = (360/(2*pi))*b/sind(theta_s);
c = -g*(cosd(theta_s) + ((2*pi)/360)*sind(theta_s)*theta_s);
a = g / dmd;

fprintf('%.8f\n',b)
fprintf('%.8f\n',g)
fprintf('%.8f\n',c)
fprintf('%.8f\n',a)

