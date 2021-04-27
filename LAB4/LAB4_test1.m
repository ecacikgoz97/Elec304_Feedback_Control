close all

x1 = armangle_P2(:,1);
y1 = armangle_P2(:,2);

x2 = armangle_P3(:,1);
y2 = armangle_P3(:,2);

x3 = armangle_P4_34(:,1);
y3 = armangle_P4_34(:,2);

x4 = armangle_P6(:,1);
y4 = armangle_P6(:,2);
%% Plots
figure(1)

subplot(4, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=2; K_d=1')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(4, 1, 2)
plot(x2, y2, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=3; K_d=1.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(4, 1, 3)
plot(x3, y3, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=4.341384; K_d=2.1706')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(4, 1, 4)
plot(x4, y4, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=5; K_d=2.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

%%
figure(2)
subplot(3, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=2; K_d=1')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
ylim([-16 -14])
grid

subplot(3, 1, 2)
plot(x2, y2, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=3; K_d=1.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
ylim([-2.5 2.5])
grid

subplot(3, 1, 3)
plot(x3, y3, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=4.341384; K_d=2.1706')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
grid
