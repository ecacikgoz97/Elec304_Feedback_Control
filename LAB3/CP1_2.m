clc;

Ts=0.01;

% dmd=0
Tp1 = 1.365;
omega1 = (2*pi*Ts)/(Tp1);
angle1 = rad2deg(omega1);
b1 = -[(tand(angle1)/Ts)^2];
lambda1 = sqrt(1 - Ts^2*b1)

% dmd=10
Tp2 = 1.335;
omega2 = (2*pi*Ts)/(Tp2);
angle2 = rad2deg(omega2);
b2 = -[(tand(angle2)/Ts)^2];
lambda2 = sqrt(1 - Ts^2*b2)

% dmd=20
Tp3 = 1.391;
omega3 = (2*pi*Ts)/(Tp3);
angle3 = rad2deg(omega3);
b3 = -[(tand(angle3)/Ts)^2];
lambda3 = sqrt(1 - Ts^2*b3)

% dmd=30
Tp4 = 1.570;
omega4 = (2*pi*Ts)/(Tp4);
angle4 = rad2deg(omega4);
b4 = -[(tand(angle4)/Ts)^2];
lambda4 = sqrt(1 - Ts^2*b4)

% dmd=35
Tp5 = 1.810;
omega5 = (2*pi*Ts)/(Tp5);
angle5 = rad2deg(omega5);
b5 = -[(tand(angle5)/Ts)^2];
lambda5 = sqrt(1 - Ts^2*b5)

% dmd=38
Tp6 = 2.240;
omega6 = (2*pi*Ts)/(Tp6);
angle6 = rad2deg(omega6);
b6 = -[(tand(angle6)/Ts)^2];
lambda6 = sqrt(1 - Ts^2*b6)

%dmd=39
Tp7 = 2.620 ;
omega7 = (2*pi*Ts)/(Tp7);
angle7 = rad2deg(omega7);
b7 = -[(tand(angle7)/Ts)^2]
lambda7 = sqrt(1 - Ts^2*b7)


%% Plots
figure(1)
b=[b1 b2 b3 b4 b5 b6 b7];
lambda = [lambda1 lambda2 lambda3 lambda4 lambda5 lambda6 lambda7]
plot(b, lambda, 'LineWidth', 5)
hold on
plot(b, lambda, 'ro','LineWidth', 7)
grid
t=title("Open-Loop: b vs. \lambda")
t.FontSize=15;
xlabel("b (Constant)")
ylabel("\lambda")
%l=legend
%l.FontSize=13;

%%
figure(2)
TP=[Tp1 Tp2 Tp3 Tp4 Tp5 Tp6 Tp7];

plot3(TP, b, lambda, 'LineWidth', 5)
t=title('3D-Space for Period-b-\lambda relation')
t.FontSize=15
xlabel('Period (s)')
ylabel('b (Constant)')
zlabel('\lambda')
grid

