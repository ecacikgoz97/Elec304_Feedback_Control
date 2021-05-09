close all;

x1 = armangle(:,1);
y1 = armangle(:,2);

x2 = filtered_armangle(:,1);
y2 = filtered_armangle(:,2);

figure(1)
subplot(2, 1, 1)
stairs(x1, y1, 'r', 'LineWidth', 2);
t=title('Arm Angle')
t.FontSize=20
xlim([0 255])
xlabel('Time (s)')
ylim([-45.05 -44.95])
ylabel(['Output'])
grid
subplot(2, 1, 2)
stairs(x2, y2, 'b', 'LineWidth', 2);
t=title('Filtered Version of Arm Angle')
t.FontSize=20
xlabel('Time (s)')
xlim([0 255])
ylim([-45.05 -44.95])
ylabel(['Output'])
grid
