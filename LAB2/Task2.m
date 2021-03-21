x1 = motorspeed_CP2_190(:,1);
y1 = motorspeed_CP2_190(:,2);

x2 = motordrive_CP2_190(:,1);
y2 = motordrive_CP2_190(:,2);

x3 = motordrive_CP2_40(:,1);
y3 = motordrive_CP2_40(:,2);
x4 = motordrive_CP2_211(:,1);
y4 = motordrive_CP2_211(:,2);


figure(1)
subplot(2,1,1)
stairs(x1,y1,'b', 'LineWidth', 1);
T1=title('Motor Speed for K_p = 190, T_s=10ms')
T1.FontSize=15;
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Speed')
ylim([0 140]);
grid
subplot(2,1,2)
stairs(x2,y2,'r', 'LineWidth', 1);
T2=title('Motor Drive for K_p = 190, T_s=10ms')
T2.FontSize=15;
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Drive')
ylim([-3000 10000]);
grid
%%

z0 = x1(100:length(x1));
q0 = y1(100:length(y1));

z1 = x2(100:length(x2));
q1 = y2(100:length(y2));

z2 = x3(100:length(x2));
q2 = y3(100:length(y2));

z3 = x4(100:length(x2));
q3 = y4(100:length(y2));

figure(2)
subplot(2,1,1)
stairs(z0, q0, 'b')
t1=title('Oscillation(Noise) Range of Motor Speed; K_p = 190 100ms delay')
t1.FontSize=15
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Speed')
grid
subplot(2,1,2)
stairs(z1, q1, 'r')
t2=title('Oscillation(Noise) Range of Motor Drive; K_p = 190 100ms delay')
t2.FontSize=15
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Drive')
grid

figure(3)
subplot(3,1,1)
stairs(z2, q2, 'r')
T3=title('Oscillation(Noise) Range of Motor Drive; K_p = 40 100ms delay')
T3.FontSize=15;
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Drive')
grid
subplot(3,1,2)
stairs(z1, q1, 'r')
T4=title('Oscillation(Noise) Range of Motor Drive; K_p = 190 100ms delay')
T4.FontSize=15;
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Drive')
grid
subplot(3,1,3)
stairs(z3, q3, 'r')
T5=title('Oscillation(Noise) Range of Motor Drive; K_p = 211 100ms delay')
T5.FontSize=15;
xlabel('Time (s)')
xlim([0 257])
ylabel('Motor Drive')
grid


%%
X = [0 5 20 40 50 100 150 160 170 175 180 185 190 195 200 205 209 210 211 212 213 215 250 300];
Y = [0.18 0.2 0.4 0.8 1 2 6 7 7.5 8 10 11 12 12 22 30 70 100 150 200 190 230 350 480];

figure(4)
plot(X,Y, 'LineWidth', 1.5)
hold on
plot(X,Y,'ro', 'LineWidth', 1.5)
t=title('Oscillation(Noise) Range of Motor Drive for increasing K_p')
t.FontSize=15
xlabel('K_p (Gain)')
ylabel('Motor Drive')
grid