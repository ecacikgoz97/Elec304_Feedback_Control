close all;
%0
x1 = armangle_IIR0(:,1);
y1 = armangle_IIR0(:,2);
%0.5
x2 = armangle_IIR1(:,1);
y2 = armangle_IIR1(:,2);
%2.5
x3 = armangle_IIR7(:,1);
y3 = armangle_IIR7(:,2);
%10
x4 = armangle_IIR2(:,1);
y4 = armangle_IIR2(:,2);
%20
x5 = armangle_IIR3(:,1);
y5 = armangle_IIR3(:,2);
%70
x6 = armangle_IIR5(:,1);
y6 = armangle_IIR5(:,2);

%% Plots2
figure(1)

subplot(6, 1, 1)
plot(x1, y1, 'r', 'LineWidth', 3)
t = title('IIR: N=0')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(6, 1, 2)
plot(x2, y2, 'r', 'LineWidth', 3)
t = title('IIR: N=0.5')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(6, 1, 3)
plot(x3, y3, 'r', 'LineWidth', 3)
t = title('IIR: N=2.5')
t.FontSize=15;
xlim([0 255])
xlabel('Time (s)')
ylabel('Output')
grid

subplot(6, 1, 4)
plot(x4, y4, 'r', 'LineWidth', 3)
t = title('IIR: N=10')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid

subplot(6, 1, 5)
plot(x5, y5, 'r', 'LineWidth', 3)
t = title('IIR: N=20')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid


subplot(6, 1, 6)
plot(x6, y6, 'r', 'LineWidth', 3)
t = title('IIR: N=70')
t.FontSize=15;
xlabel('Time (s)')
xlim([0 255])
ylabel('Output')
grid


