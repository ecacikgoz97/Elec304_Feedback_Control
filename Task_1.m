%% Elec304 Lab1: Motor Speed, Motor Drive and Motor Speed vs. Motor Drive Plots
% by Emre Can Acikgoz
%% Import data
x1=motorspeed(:,1);
y1=motorspeed(:,2);

x2=motordrive(:,1);
y2=motordrive(:,2);
%% Plots
figure(1)
stairs(x1,y1, 'r', 'Linewidth', 3)
t=title('Motor Speed for T_s=100ms')
t.FontSize=15;
xlabel('Time(s)')
ylabel('Output')
lgd=legend('Motor Speed','Location','southeast')
lgd.FontSize=15;

figure(2)
stairs(x2,y2, 'b', 'Linewidth', 3)
t=title('Motor Drive for T_s=100ms')
t.FontSize=15;
xlabel('Time(s)')
ylabel('Output')
lgd=legend('Motor Drive','Location','southeast')
lgd.FontSize=15;

figure(3)
stairs(x1,y1, 'r', 'Linewidth', 3)
hold on
stairs(x2,y2, 'b', 'Linewidth', 3)
t=title('Motor Speed vs. Motor Drive for T_s=100ms')
t.FontSize=15;
xlabel('Time(s)')
ylabel('Output')
lgd=legend('Motor Speed', 'Motor Drive','Location','southeast')
lgd.FontSize=15;
% Propeller speed increases as the motor drive is ramped up