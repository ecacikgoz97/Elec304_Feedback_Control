clc;

dmd=35;
theta_d=-29.8;
Kp = 3.658535;
b = -13.822;
a=46.70117946;
c=-1830.440103;

SSTE = (a*dmd + c + b*theta_d)/(-a*Kp)