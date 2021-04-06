clc;

Ts=0.01;

% dmd=0
Tp1 = 1.365;
omega1 = (2*pi*Ts)/(Tp1);
angle1 = rad2deg(omega1);
b1 = -[(tand(angle1)/Ts)^2]


% dmd=10
Tp2 = 1.335;
omega2 = (2*pi*Ts)/(Tp2);
angle2 = rad2deg(omega2);
b2 = -[(tand(angle2)/Ts)^2]

% dmd=20
Tp3 = 1.391;
omega3 = (2*pi*Ts)/(Tp3);
angle3 = rad2deg(omega3);
b3 = -[(tand(angle3)/Ts)^2]

% dmd=30
Tp4 = 1.570;
omega4 = (2*pi*Ts)/(Tp4);
angle4 = rad2deg(omega4);
b4 = -[(tand(angle4)/Ts)^2]
theta_s4 = -41.4;
g4 = b4/sind(theta_s4)
c4 = -g4*(cosd(theta_s4) + theta_s4*sind(theta_s4))


% dmd=35
Tp5 = 1.810;
omega5 = (2*pi*Ts)/(Tp5);
angle5 = rad2deg(omega5);
b5 = -[(tand(angle5)/Ts)^2]
theta_s5 = -28.95;
g5 = b5/sind(theta_s5)
c5 = -g5*(cosd(theta_s5) + theta_s5*sind(theta_s5))


%dmd=38
Tp7 = 2.240;
omega7 = (2*pi*Ts)/(Tp7);
angle7 = rad2deg(omega7);

b7 = -[(tand(angle7)/Ts)^2]
theta_s7 = -18.2;
g7 = (360/(2*pi))*(b7/sind(theta_s7))
c7 = -g7*(cosd(theta_s7) + (360/(2*pi))*theta_s7*sind(theta_s7))


% dmd=39
Tp6 = 2.620;
omega6 = (2*pi*Ts)/(Tp6);
angle6 = rad2deg(omega6);

b6 = -[(tand(angle6)/Ts)^2]
theta_s6 = -12.83;
g6 = (360/(2*pi))*(b6/sind(theta_s6))
c6 = -g6*(cosd(theta_s6) + ((360/2*pi))*theta_s6*sind(theta_s6))
%% Plots
figure(1)
DMD=[0 10 20 30 35 39];
TP=[Tp1 Tp2 Tp3 Tp4 Tp5 Tp6];
plot(DMD, TP, 'LineWidth', 5)
hold on
plot(DMD, TP, 'ro','LineWidth', 7)
grid
t=title("Open-Loop: dmd vs. T_p")
t.FontSize=15;
xlabel("Direct Motor Drive (dmd)")
ylabel("Period (T_p)")
l=legend('T_p','dmd','Location','NorthWest')
l.FontSize=13;
%%
figure(2)
