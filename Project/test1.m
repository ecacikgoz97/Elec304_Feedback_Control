close all; clc;

x = ArmAngle(:,1);
y = ArmAngle(:,2);

x_length = length(x);
y_length = length(y);

%% Plot

figure(1)
plot(x, y, 'r', 'LineWidth', 4)
t = title('Response for 89 to -10 Step Input')
t.FontSize=20
l1=xlabel('Time (s)')
l1.FontSize=12
l2=ylabel('Arm Angle')
l2.FontSize=12
grid

S = stepinfo(y, x, 0) % very high steady-state tolerance

%% Test3
settling_time = 6.69; % manuel set
id = settling_time * 5500;
x1 = x(id:x_length);
y1 = y(id:y_length);

max_y = 45 - max(y1);
min_y = 45 - min(y1);
MAX = max(abs(max_y), abs(min_y));
fprintf('Max value is: %.5f\nMin value is: %.5f\nTotal max distance: %.5f\n', max_y, min_y, MAX)