close all

x1 = motordrive_case1(:,1);
y1 = motordrive_case1(:,2);

x2 = motordrive_case2(:,1);
y2 = motordrive_case2(:,2);

x3 = motordrive_case3(:,1);
y3 = motordrive_case3(:,2);

x4 = motordrive_case4(:,1);
y4 = motordrive_case4(:,2);

%% Plots1
figure(1)
plot(x1, y1, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=0.685344; K_d=0.13706896')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
grid

figure(2)
plot(x2, y2, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=2.8090664; K_d=0.56181328')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
grid

figure(3)
plot(x3, y3, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=8.796956; K_d=1.7593912')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
grid

figure(4)
plot(x4, y4, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=11.122216; K_d=2.2244432')
t.FontSize=15;
xlabel('Time (s)')
xlim([5 255])
ylabel('Output')
grid
%% Plots2
figure(5)

subplot(4, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=0.685344; K_d=0.13706896')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
ylim([20 50])
grid

subplot(4, 1, 2)
plot(x2, y2, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=2.8090664; K_d=0.56181328')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
ylim([20 50])
grid

subplot(4, 1, 3)
plot(x3, y3, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=8.796956; K_d=1.7593912')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
ylim([20 50])
grid

subplot(4, 1, 4)
plot(x4, y4, 'r', 'LineWidth', 3)
t = title('Motor Drive for K_p=11.122216; K_d=2.2244432')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
ylim([20 50])
grid
