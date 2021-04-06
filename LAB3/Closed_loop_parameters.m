clc;

Ts=0.01;

% dmd=35
Tp5 = 1.570;
Kp = 0.1;
b5 = -12.06011798;
omega5 = (2*pi*Ts)/(Tp5);
angle5 = rad2deg(omega5);
b5_Kpa = -[(tand(angle5)/Ts)^2];
a5 = (b5_Kpa + b5)*10;


% dmd=39
Tp6 = 2.01;
Kp=0.1;
b6 = -5.753388299;
omega6 = (2*pi*Ts)/(Tp6);
angle6 = rad2deg(omega6);
b6_Kpa = [(tand(angle6)/Ts)^2];
a = (b6_Kpa + b6)*10