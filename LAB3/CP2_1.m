x1 = armangle_dmd39_Kp0(:,1);
y1 = armangle_dmd39_Kp0(:,2);

x2 = armangle_dmd39_Kp01(:,1);
y2 = armangle_dmd39_Kp01(:,2);

x3 = armangle_dmd39_Kp05(:,1);
y3 = armangle_dmd39_Kp05(:,2);

x4 = armangle_dmd39_Kp1(:,1);
y4 = armangle_dmd39_Kp1(:,2);

x5 = armangle_dmd39_Kp5(:,1);
y5 = armangle_dmd39_Kp5(:,2);

x6 = armangle_dmd39_Kp20(:,1);
y6 = armangle_dmd39_Kp20(:,2);

x7 = armangle_dmd39_Kp50(:,1);
y7 = armangle_dmd39_Kp50(:,2);

%% Plots

figure(1)
subplot(6,1,1)
stairs(x1, y1, 'r','LineWidth', 1.5)
t=title('Arm Angle vs. K_p=0')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 256])
ylabel('Angle')
grid

subplot(6,1,2)
stairs(x2, y2, 'r','LineWidth', 1.5)
t=title('Arm Angle vs. K_p=0.1')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 256])
ylabel('Angle')
grid

subplot(6,1,3)
stairs(x3, y3, 'r','LineWidth', 1.5)
t=title('Arm Angle vs. K_p=0.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 256])
ylabel('Angle')
grid

subplot(6,1,4)
stairs(x4, y4, 'r','LineWidth', 1.5)
t=title('Arm Angle vs. K_p=1')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 256])
ylabel('Angle')
grid

subplot(6,1,5)
stairs(x5, y5, 'r','LineWidth', 1.5)
t=title('Arm Angle vs. K_p=5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 256])
ylabel('Angle')
grid

subplot(6,1,6)
stairs(x6, y6, 'r','LineWidth', 1.5)
t=title('Arm Angle vs. K_p=20')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 256])
ylabel('Angle')
grid
