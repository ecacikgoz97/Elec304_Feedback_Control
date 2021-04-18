clc;
close all;

% Kp=1, Kd=0
x1 = P_unstable(:,1);
y1 = P_unstable(:,2);

% Kp=1, Kd=0.1
x2 = PD_Marginally_Stable(:,1);
y2 = PD_Marginally_Stable(:,2);

% Kp=1, Kd=0.3
x3 = PD_Stable_Kd03(:,1);
y3 = PD_Stable_Kd03(:,2);

% Kp=1, Kd=0.6
x4 = PD_Stable_Kd06(:,1);
y4 = PD_Stable_Kd06(:,2);

%% Plots
figure(1)
subplot(4,1,1)
stairs(x1, y1, 'r','LineWidth', 3);
t=title('K_p=1, K_d=0: Unstable')
t.FontSize=15;
xlabel('Time (s)');
ylabel('Output');
grid

subplot(4,1,2)
stairs(x2, y2, 'r','LineWidth', 3);
t=title('K_p=1, K_d=0.1: Marginally Stable')
t.FontSize=15;
xlabel('Time (s)');
ylabel('Output');
grid

subplot(4,1,3)
stairs(x3, y3, 'r','LineWidth', 3);
t=title('K_p=1, K_d=0.3: Overshoot')
t.FontSize=15;
xlabel('Time (s)');
ylabel('Output');
grid

subplot(4,1,4)
stairs(x4, y4, 'r','LineWidth', 3);
t=title('K_p=1, K_d=0.6: Less Overshoot')
t.FontSize=15;
xlabel('Time (s)');
ylabel('Output');
grid