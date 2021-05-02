close all

% Parameters
Ts = 0.01;
a = 46.79015073;
b = -13.83523877;
Beta = 0.04;
N = 50;

z = zpk('z',Ts);

% Transfer Function
TransferFunction = (Ts^2*a*z^(-2))/(1 - 2*z^(-1) + (1-b*Ts^2)*z^(-2));
% Transfer Function with Friction
TransferFunction_Friction = (Ts^2*a*z^(-2))/(1 +(Beta*Ts - 2)*z^(-1) + (1 - (Beta + b*Ts)*Ts)*z^(-2));

% Control Model
IIR = ((N*Ts)/(1-(1-N*Ts)*z^(-1))); % Filter
Kd_Kp = 1;   % Kd/Kp
Ki_Kp = 1; % Ki/Kp
PID = 1 + Kd_Kp*(1-z^(-1))/Ts + Ki_Kp*Ts*z^(-1)/(1-z^(-1));  % Proportional-Integral-Derivative Controller
PID_IIR = 1 + (Kd_Kp*(1-z^(-1))/Ts)*IIR + Ki_Kp*Ts*z^(-1)/(1-z^(-1)); % PID with IIR

con_sys = PID * TransferFunction; 

% sweep Kp from 0 to inf
rlocus(con_sys);

rltool(TransferFunction, PID);
