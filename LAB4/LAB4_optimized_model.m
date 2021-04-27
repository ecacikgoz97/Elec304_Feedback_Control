close all

x1 = armangle_opt1(:,1);
y1 = armangle_opt1(:,2);

x2 = angle_error_opt1(:,1);
y2 = angle_error_opt1(:,2);

x3 = motordrive_opt1(:,1);
y3 = motordrive_opt1(:,2);

%% Plots1
figure(1)
plot(x1, y1, 'r', 'LineWidth', 3)
t = title('Arm Angle Position for K_p=3.658536; K_d=0.7317072')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
ylim([-40 0])
grid

figure(2)
plot(x2, y2, 'r', 'LineWidth', 3)
t = title('Arm Angle Error for K_p=2.8090664; K_d=0.56181328')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Error')
ylim([-0.2 0])
grid

figure(3)
plot(x3, y3, 'r', 'LineWidth', 3)
t = title('Motor Drive Output for K_p=8.796956; K_d=1.7593912')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
ylim([00 40])
grid

%% Plots2
figure(4)

subplot(3, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=3.658536; K_d=0.7317072')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(3, 1, 2)
plot(x2, y2, 'r', 'LineWidth', 2)
t = title('Arm Angle Error for K_p=2.8090664; K_d=0.56181328')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(3, 1, 3)
plot(x3, y3, 'r', 'LineWidth', 2)
t = title('Motor Drive Output for K_p=8.796956; K_d=1.7593912')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

