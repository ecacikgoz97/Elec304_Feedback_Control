x = motorspeed_CP4_190(:,1);
y = motorspeed_CP4_190(:,2);


figure(1)
stairs(x, y, 'r', 'LineWidth', 1.25)
t=title('Transient Settling Performance for K_p = 190, T_s=10ms')
t.FontSize=15;
xlabel('Time (s)')
xlim([-25 260])
ylabel('Motor Speed (W_d)')
ylim([0 130])
grid on

%%
x0 = motorspeed_CP4_20(:,1);
y0 = motorspeed_CP4_20(:,2);
x0 = x0(5000:length(x0));
y0 = y0(5000:length(y0));
Info0 = stepinfo(y0, x0, 'SettlingTimeThreshold',0.005);
SettlingTime0 = Info0.SettlingTime;


x1 = motorspeed_CP4_40(:,1);
y1 = motorspeed_CP4_40(:,2);
x1 = x1(5000:length(x1));
y1 = y1(5000:length(y1));
Info1 = stepinfo(y1, x1, 'SettlingTimeThreshold',0.005);
SettlingTime1 = Info1.SettlingTime;

x2 = motorspeed_CP4_100(:,1);
y2 = motorspeed_CP4_100(:,2);
x2 = x2(5000:length(x2));
y2 = y2(5000:length(y2));
Info2 = stepinfo(y2, x2, 'SettlingTimeThreshold',0.005);
SettlingTime2 = Info2.SettlingTime;

x3 = motorspeed_CP4_140(:,1);
y3 = motorspeed_CP4_140(:,2);
x3 = x3(5000:length(x3));
y3 = y3(5000:length(y3));
Info3 = stepinfo(y3, x3, 'SettlingTimeThreshold',0.005);
SettlingTime3 = Info3.SettlingTime;

x4 = motorspeed_CP4_190(:,1);
y4 = motorspeed_CP4_190(:,2);
x4 = x4(5000:length(x4));
y4 = y4(5000:length(y4));
Info4 = stepinfo(y4, x4, 'SettlingTimeThreshold',0.005);
SettlingTime4 = Info4.SettlingTime;

x5 = motorspeed_CP4_250(:,1);
y5 = motorspeed_CP4_250(:,2);
x5 = x5(5000:length(x5));
y5 = y5(5000:length(y5));
Info5 = stepinfo(y5, x5, 'SettlingTimeThreshold',0.005);
SettlingTime5 = Info5.SettlingTime;

x6 = motorspeed_CP4_500(:,1);
y6 = motorspeed_CP4_500(:,2);
x6 = x6(5000:length(x6));
y6 = y6(5000:length(y6));
Info6 = stepinfo(y6, x6, 'SettlingTimeThreshold',0.005);
SettlingTime6 = Info6.SettlingTime;

X = [20 40 100 140 190 250 500];
Y = [SettlingTime0  SettlingTime1 SettlingTime2 SettlingTime3 SettlingTime4 SettlingTime5 SettlingTime6];

figure(2)
plot(X, Y,'LineWidth', 1.5);
hold on
plot(X, Y, 'ro','LineWidth', 1.3);
t=title('Settling time for increasing K_p');
t.FontSize=15;
xlabel('K_p (Gain)')
ylabel('Settling Time')
grid
