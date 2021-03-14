x1 = motorspeed_cp1(:,1);
y1 = motorspeed_cp1(:,2);

x_p1 = x1(1001:2001)
y_p1 = y1(1001:2001)

p1 = polyfit(x_p1, y_p1, 1);
Yp1 = polyval(p1, x_p1);


figure(1)
stairs(x1, y1, 'LineWidth', 2)
hold on
plot(x_p1, Yp1, 'r', 'LineWidth', 3)
xlim([0 260])
grid on