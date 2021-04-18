close all

Ts = 0.01;
N = 0.4;
a = 44.77590677;
b = -5.753388299;
Beta = 0.01;

z = zpk('z',Ts);

%accelerationtovelocity = Ts*z^(-1)/(1-z^(-1)); % integrator
%velocitytoposition     = Ts*z^(-1)/(1-z^(-1)); % integrator

%accelerationtoposition = accelerationtovelocity * velocitytoposition;  
TransferFunction = (Ts^2*a*z^(-2))/[1 - 2*z^(-1) + (1-b*Ts^2)*z^(-2)];
IIR = [(1-z^(-1))/Ts] * [(N*Ts)/(1-(1-N*Ts)*z^(-1))];
FeedForward = TransferFunction * IIR;

Kd_Kp = 0.5; % Kd/Kp
PD = 1 + Kd_Kp*(1-z^(-1))/Ts;  % proportional derivative controller

%con_sys = conpd * accelerationtoposition; 
control_sys = PD * FeedForward;

% sweep Kp from 0 to inf

rlocus(control_sys);

rltool(FeedForward, PD);