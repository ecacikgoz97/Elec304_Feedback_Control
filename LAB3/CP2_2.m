x1 = armangle_Kp01_dmd0(:,1);
y1 = armangle_Kp01_dmd0(:,2);

x2 = armangle_Kp01_dmd10(:,1);
y2 = armangle_Kp01_dmd10(:,2);

x3 = armangle_Kp01_dmd20(:,1);
y3 = armangle_Kp01_dmd20(:,2);

x4 = armangle_Kp01_dmd30(:,1);
y4 = armangle_Kp01_dmd30(:,2);

x5 = armangle_Kp01_dmd39(:,1);
y5 = armangle_Kp01_dmd39(:,2);

x6 = armangle_Kp01_dmd42(:,1);
y6 = armangle_Kp01_dmd42(:,2);

x7 = armangle_Kp01_dmd50(:,1);
y7 = armangle_Kp01_dmd50(:,2);

%% Plots
figure(1)

subplot(6,1,1)
stairs(x1,y1,'r', 'LineWidth', 1.5)
t=title('Closed-Loop: K_p=0.1 vs dmd=0')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Angle')
grid

subplot(6,1,2)
stairs(x2,y2,'r', 'LineWidth', 1.5)
t=title('Closed-Loop: K_p=0.1 vs dmd=10')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Angle')
grid

subplot(6,1,3)
stairs(x3,y3,'r', 'LineWidth', 1.5)
t=title('Closed-Loop: K_p=0.1 vs dmd=20')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Angle')
grid

subplot(6,1,4)
stairs(x4,y4,'r', 'LineWidth', 1.5)
t=title('Closed-Loop: K_p=0.1 vs dmd=30')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Angle')
grid

subplot(6,1,5)
stairs(x5,y5,'r', 'LineWidth', 1.5)
t=title('Closed-Loop: K_p=0.1 vs dmd=39')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Angle')
grid

subplot(6,1,6)
stairs(x6,y6,'r', 'LineWidth', 1.5)
t=title('Closed-Loop: K_p=0.1 vs dmd=42')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Angle')
grid
