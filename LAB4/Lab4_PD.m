close all

% Parameters
Ts = 0.01;
%a = 44.77590677;
%b = -5.753388299; %update
b = -13.822;
%a = 313.885095;
a=46.70117946;
Beta = 0.04;
N = 50;

z = zpk('z',Ts);
%% MODEL
% Transfer Function
TransferFunction = (Ts^2*a*z^(-2))/[1 - 2*z^(-1) + (1-b*Ts^2)*z^(-2)];
% Transfer Function with Friction
TransferFunction_Friction = (Ts^2*a*z^(-2))/(1 +(Beta*Ts - 2)*z^(-1) + (1 - (Beta + b*Ts)*Ts)*z^(-2));

% Controller Block
Kd_Kp = 0.2; % Kd/Kp
PD = 1 + Kd_Kp*(1-z^(-1))/Ts; % PD Control
PD_IIR = 1 + (Kd_Kp*(1-z^(-1))/Ts) * ((N*Ts)/(1-(1-N*Ts)*z^(-1))); % PD Control with IIR Filter

% Control System
control_sys = PD_IIR * TransferFunction;

% sweep Kp from 0 to inf
rlocus(control_sys);

%GUI
rltool(TransferFunction, PD);