close all

% Parameters
Ts = 0.01;
N = 0.4;
a = 44.77590677;
b = -5.753388299;
Beta = 0.01; %will be updated

z = zpk('z',Ts);

%%
% Transfer Function
TransferFunction = (Ts^2*a*z^(-2))/[1 - 2*z^(-1) + (1-b*Ts^2)*z^(-2)];
%TransferFunction_Friction = (Ts^2*a*z^(-2))/[1 +(Beta*Ts - 2)*z^(-1) + (1 - (Beta + b*Ts)*Ts)*z^(-2)];

% proportional  controller
P = zpk(1);


control_sys = P * TransferFunction;

% sweep Kp from 0 to inf
rlocus(control_sys);

rltool(TransferFunction, P);