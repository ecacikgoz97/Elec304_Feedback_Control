x1 = Angle_Error_Kp01_dmd0(:,1);
y1 = Angle_Error_Kp01_dmd0(:,2);

x2 = Angle_Error_Kp01_dmd10(:,1);
y2 = Angle_Error_Kp01_dmd10(:,2);

x3 = Angle_Error_Kp01_dmd20(:,1);
y3 = Angle_Error_Kp01_dmd20(:,2);

x4 = Angle_Error_Kp01_dmd30(:,1);
y4 = Angle_Error_Kp01_dmd30(:,2);

x5 = Angle_Error_Kp01_dmd35(:,1);
y5 = Angle_Error_Kp01_dmd35(:,2);

x6 = Angle_Error_Kp01_dmd39(:,1);
y6 = Angle_Error_Kp01_dmd39(:,2);

x7 = Angle_Error_Kp01_dmd40(:,1);
y7 = Angle_Error_Kp01_dmd40(:,2);

x8 = Angle_Error_Kp01_dmd41(:,1);
y8 = Angle_Error_Kp01_dmd41(:,2);

x9 = Angle_Error_Kp01_dmd45(:,1);
y9 = Angle_Error_Kp01_dmd45(:,2);

x10 = Angle_Error_Kp01_dmd50(:,1);
y10 = Angle_Error_Kp01_dmd50(:,2);

x11 = Angle_Error_Kp01_dmd100(:,1);
y11 = Angle_Error_Kp01_dmd100(:,2);

%% Plots
figure(1)
subplot(6,1,1)
stairs(x1, y1, 'r', 'LineWidth', 2);
t=title('SSTE for K_p=0.1, dmd=0');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,2)
stairs(x3, y3, 'r', 'LineWidth', 2);
t=title('SSTE for K_p=0.1, dmd=20');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,3)
stairs(x4, y4, 'r', 'LineWidth', 2);
t=title('SSTE for K_p=0.1, dmd=30');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,4)
stairs(x6, y6, 'r', 'LineWidth', 2);
t=title('SSTE for K_p=0.1, dmd=39');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,5)
stairs(x8, y8, 'r', 'LineWidth', 2);
t=title('SSTE for K_p=0.1, dmd=41');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(6,1,6)
stairs(x10, y10, 'r', 'LineWidth', 2);
t=title('SSTE for K_p=0.1, dmd=50');
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

%% Erros

DMD=[25 28 30 32 35 38 39 40 41 42 45 50 60 100];
Errors=[30.5 25 21.5 17.5 10.65 2.17 1.3 5.5 11 195 195 195 195 195];

figure(2)
plot(DMD, Errors, 'LineWidth', 5);
hold on
plot(DMD, Errors, 'ro','LineWidth', 7)
t=title('Absolute values of Errors for K_p=0.1 & increasing DMD');
t.FontSize=15;
xlabel('DMD')
xlim([0 100])
ylabel('|Error|')
grid











