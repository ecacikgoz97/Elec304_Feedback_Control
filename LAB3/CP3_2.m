clc

x1 = Angle_Error_dmd39_Kp0(:,1);
y1 = Angle_Error_dmd39_Kp0(:,2);

x2 = Angle_Error_dmd39_Kp01(:,1);
y2 = Angle_Error_dmd39_Kp01(:,2);

x3 = Angle_Error_dmd39_Kp02(:,1);
y3 = Angle_Error_dmd39_Kp02(:,2);

x4 = Angle_Error_dmd39_Kp04(:,1);
y4 = Angle_Error_dmd39_Kp04(:,2);

x5 = Angle_Error_dmd39_Kp05(:,1);
y5 = Angle_Error_dmd39_Kp05(:,2);

x6 = Angle_Error_dmd39_Kp1(:,1);
y6 = Angle_Error_dmd39_Kp1(:,2);

%% Plot
figure(1)
subplot(6,1,1)
stairs(x1, y1, 'r', 'LineWidth', 2);
t=title('SSTE for dmd=39, K_p=0');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,2)
stairs(x2, y2, 'r', 'LineWidth', 2);
t=title('SSTE for dmd=39, K_p=0.1');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,3)
stairs(x3, y3, 'r', 'LineWidth', 2);
t=title('SSTE for dmd=39, K_p=0.2');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,4)
stairs(x4, y4, 'r', 'LineWidth', 2);
t=title('SSTE for dmd=39, K_p=0.4');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,5)
stairs(x5, y5, 'r', 'LineWidth', 2);
t=title('SSTE for dmd=39, K_p=0.5');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,6)
stairs(x6, y6, 'r', 'LineWidth', 2);
t=title('SSTE for dmd=39, K_p=1');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

%% Errors

K_p=[0 0.1 0.2 0.3 0.4 1];
Error=[2.15 1.3 1 0.75 0.6 195];

figure(2)
plot(K_p, Error, 'LineWidth', 5);
hold on
plot(K_p, Error, 'ro','LineWidth', 7)
t=title('Absolute values of Errors for DMD=39 & increasin K_p');
t.FontSize=15;
xlabel('DMD')
xlim([0 0.4])
ylabel('|Error|')
grid
