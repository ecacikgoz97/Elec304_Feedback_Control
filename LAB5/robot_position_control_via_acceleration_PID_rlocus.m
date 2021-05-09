close all

Ts = 0.1;

z = zpk('z',Ts);

accelerationtovelocity = Ts*z^(-1)/(1-z^(-1)); % integrator
velocitytoposition     = Ts*z^(-1)/(1-z^(-1)); % integrator

accelerationtoposition = accelerationtovelocity * velocitytoposition;  

Kd_Kp = 5;   % Kd/Kp
Ki_Kp = 0.1; % Ki/Kp
conpid = 1 + Kd_Kp*(1-z^(-1))/Ts + Ki_Kp*Ts*z^(-1)/(1-z^(-1));  % proportional integral derivative controller

con_sys = conpid * accelerationtoposition; 

% sweep Kp from 0 to inf

rlocus(con_sys);

rltool(accelerationtoposition, conpid);
