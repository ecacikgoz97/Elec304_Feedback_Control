close all

x1 = armangle_case1(:,1);
y1 = armangle_case1(:,2);

x2 = armangle_case2(:,1);
y2 = armangle_case2(:,2);

x3 = armangle_case3(:,1);
y3 = armangle_case3(:,2);

x4 = armangle_case4(:,1);
y4 = armangle_case4(:,2);

%% Plots1
figure(1)
plot(x1, y1, 'r', 'LineWidth', 5)
t = title('Arm Angle Position for K_p=0.685344; K_d=0.13706896')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

figure(2)
plot(x2, y2, 'r', 'LineWidth', 5)
t = title('Arm Angle Position for K_p=2.8090664; K_d=0.56181328')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

figure(3)
plot(x3, y3, 'r', 'LineWidth', 5)
t = title('Arm Angle Position for K_p=8.796956; K_d=1.7593912')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

figure(4)
plot(x4, y4, 'r', 'LineWidth', 5)
t = title('Arm Angle Position for K_p=11.122216; K_d=2.2244432')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid
%% Plots2
figure(5)

subplot(4, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 2)
t = title('Arm Angle Position for K_p=2; K_d=0.13706896')
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
