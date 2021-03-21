x1 = motorspeed_cp1(:,1);
y1 = motorspeed_cp1(:,2);

x2 = motorspeed_cp2(:,1);
y2 = motorspeed_cp2(:,2);

x3 = motorspeed_cp3(:,1);
y3 = motorspeed_cp3(:,2);

x4 = motorspeed_cp4(:,1);
y4 = motorspeed_cp4(:,2);

x5 = motorspeed_cp5(:,1);
y5 = motorspeed_cp5(:,2);

X = (x1+x2+x3+x4+x5) / 5;
Y = (y1+y2+y3+y4+y5) / 5;

x_p1 = X(1001:2001);
y_p1 = Y(1001:2001);

p1 = polyfit(x_p1, y_p1, 1);
Yp1 = polyval(p1, x_p1);


figure(1)
stairs(X, Y, 'LineWidth', 4)
title('Motor Speed: Fitted Linear Model')
xlabel('Time (s)')
xlim([0 260])
ylabel('Output')
grid on


figure(2)
stairs(X, Y, 'LineWidth', 2)
hold on
plot(x_p1, Yp1, 'r', 'LineWidth', 3)
title('Motor Speed: Fitted Linear Model')
xlabel('Time (s)')
xlim([0 260])
ylabel('Output')
l=legend('Motor Speed', 'Fitted Linear Model','Location', 'SouthEast');
l.FontSize=15
grid on


a = p1(1);
b = p1(2);

fprintf("Our line equation is:\nh(m_d) = %.4f*m_d + %.4f\n", a, b);
