x3 = SteadyState_CP3_40(:,1);
y3 = SteadyState_CP3_40(:,2);
x3 = x3(100:length(x3));
y3 = y3(100:length(y3));

x4 = SteadyState_CP3_100(:,1);
y4 = SteadyState_CP3_100(:,2);
x4 = x4(100:length(x4));
y4 = y4(100:length(y4));

x5 = SteadyState_CP3_190(:,1);
y5 = SteadyState_CP3_190(:,2);
x5 = x5(100:length(x5));
y5 = y5(100:length(y5));

x6 = SteadyState_CP3_300(:,1);
y6 = SteadyState_CP3_300(:,2);
x6 = x6(100:length(x6));
y6 = y6(100:length(y6));


figure(1)
subplot(4,1,1)
stairs(x3, y3, 'r', 'LineWidth', 1.25)
t=title('SSTE for K_p = 40; T_s=10ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(4,1,2)
stairs(x4, y4, 'g', 'LineWidth', 1.25)
t=title('SSTE for K_p = 100; T_s=10ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(4,1,3)
stairs(x5, y5, 'b', 'LineWidth', 1.25)
t=title('SSTE for K_p = 190; T_s=10ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(4,1,4)
stairs(x6, y6, 'k', 'LineWidth', 1.25)
t=title('SSTE for K_p = 300, T_s=10ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid

fprintf("SSTE affect for rising K_p\n")
fprintf("SSTE by mean Method for K_p=40: %.4f\n", abs(mean(y3)));
fprintf("SSTE by mean Method for K_p=100: %.4f\n", abs(mean(y4)));
fprintf("SSTE by mean Method for K_p=190: %.4f\n", abs(mean(y5)));
fprintf("SSTE by mean Method for K_p=300: %.4f\n\n\n", abs(mean(y6)));

%%
x7 = SteadyState_CP3_100_5ms(:,1);
y7 = SteadyState_CP3_100_5ms(:,2);
x7 = x7(200:length(x7));
y7 = y7(200:length(y7));

x8 = SteadyState_CP3_100_20ms(:,1);
y8 = SteadyState_CP3_100_20ms(:,2);
x8 = x8(100:length(x8));
y8 = y8(100:length(y8));


figure(2)
subplot(3,1,1)
stairs(x7, y7, 'r', 'LineWidth', 1.25)
t=title('SSTE for K_p = 100; T_s=5ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-1 0])
grid
subplot(3,1,2)
stairs(x4, y4, 'g', 'LineWidth', 1.25)
t=title('SSTE for K_p = 100; T_s=10ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-1 0])
grid
subplot(3,1,3)
stairs(x8, y8, 'b', 'LineWidth', 1.25)
t=title('SSTE for K_p = 100; T_s=20ms; dmd=168.3')
t.FontSize=15;
xlabel('Time (s)')
xlim([2 260])
ylabel('Error')
ylim([-1 0])
grid

fprintf("SSTE affect for rising T_s\n")
fprintf("SSTE by mean Method for T_s=5ms: %.4f\n", abs(mean(y7)));
fprintf("SSTE by mean Method for T_s=10ms: %.4f\n", abs(mean(y4)));
fprintf("SSTE by mean Method for T_s=20ms: %.4f\n", abs(mean(y8)));

%%
x9 = SteadyState_CP3_dmd20(:,1);
y9 = SteadyState_CP3_dmd20(:,2);
x9 = x9(100:length(x9));
y9 = y9(100:length(y9));

x10 = SteadyState_CP3_dmd100(:,1);
y10 = SteadyState_CP3_dmd100(:,2);
x10 = x10(100:length(x10));
y10 = y10(100:length(y10));

x11 = SteadyState_CP3_dmd168(:,1);
y11 = SteadyState_CP3_dmd168(:,2);
x11 = x11(100:length(x11));
y11 = y11(100:length(y11));

x12 = SteadyState_CP3_dmd250(:,1);
y12 = SteadyState_CP3_dmd250(:,2);
x12 = x12(100:length(x12));
y12 = y12(100:length(y12));

x13 = SteadyState_CP3_dmd500(:,1);
y13 = SteadyState_CP3_dmd500(:,2);
x13 = x13(100:length(x13));
y13 = y13(100:length(y13));


figure(3)
subplot(5,1,1)
stairs(x9, y9, 'r', 'LineWidth', 1.25)
t=title('SSTE for K_p = 190; T_s=10ms; dmd=20')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(5,1,2)
stairs(x10, y10, 'g', 'LineWidth', 1.25)
t=title('SSTE for K_p = 190; T_s=10ms; dmd=100')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(5,1,3)
stairs(x11, y11, 'b', 'LineWidth', 1.25)
t=title('SSTE for K_p = 190; T_s=10ms; dmd=168')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(5,1,4)
stairs(x12, y12, 'k', 'LineWidth', 1.25)
t=title('SSTE for K_p = 190; T_s=10ms; dmd=250')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid
subplot(5,1,5)
stairs(x13, y13, 'k', 'LineWidth', 1.25)
t=title('SSTE for K_p = 190; T_s=10ms; dmd=500')
t.FontSize=15;
xlabel('Time (s)')
xlim([1 260])
ylabel('Error')
ylim([-2 2])
grid