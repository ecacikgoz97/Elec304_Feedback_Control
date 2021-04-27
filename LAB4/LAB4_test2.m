close all

x1 = angle_error_P2{1}.Values.Time;
y1 = angle_error_P2{1}.Values.Data;

x2 = angle_error_P3{1}.Values.Time;
y2 = angle_error_P3{1}.Values.Data;

x3 = angle_error_P4_34{1}.Values.Time;
y3 = angle_error_P4_34{1}.Values.Data;

x4 = angle_error_P6{1}.Values.Time;
y4 = angle_error_P6{1}.Values.Data;
%% Plots
figure(1)

subplot(4, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 2)
t = title('Angle Error for K_p=2; K_d=1')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(4, 1, 2)
plot(x2, y2, 'r', 'LineWidth', 2)
t = title('Angle Error for K_p=3; K_d=1.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(4, 1, 3)
plot(x3, y3, 'r', 'LineWidth', 2)
t = title('Angle Error for K_p=4.341384; K_d=2.1706')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

subplot(4, 1, 4)
plot(x4, y4, 'r', 'LineWidth', 2)
t = title('Angle Error for K_p=5; K_d=2.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Error')
grid

