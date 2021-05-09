close all;

x1 = out.arm_angle_model_dmd30(:,1);
y1 = out.arm_angle_model_dmd30(:,2);

x2 = armangle_dmd30(:,1);
y2 = armangle_dmd30(:,2);

figure(1)
subplot(2, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 3);
t=title('Own Model Position Output')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
l=legend('Own Model Position')
l.FontSize=15
grid
subplot(2, 1, 2)
stairs(x2, y2, 'b', 'LineWidth', 3);
t=title('Arm Angle Output')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
l=legend('Arm Angle')
l.FontSize=15
grid

figure(2)
plot(x1, y1, 'r', 'LineWidth', 3);
hold on
stairs(x2, y2, 'b', 'LineWidth', 2);
t=title('Own Model Position vs Arm Angle')
t.FontSize=15
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
l=legend('Own Model Position', 'Arm Angle')
l.FontSize=15
grid