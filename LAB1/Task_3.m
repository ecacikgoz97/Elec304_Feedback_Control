%% Elec304 Lab1: Arm Angle for increasing DMD
% by Emre Can Acikgoz
%% Import data
x4=armangle(:,1);
y4=armangle(:,2);

x5=armangle_10dmd(:,1);
y5=armangle_10dmd(:,2);

x6=armangle_30dmd(:,1);
y6=armangle_30dmd(:,2);

x7=armangle_39dmd(:,1);
y7=armangle_39dmd(:,2);

x8=armangle_40dmd(:,1);
y8=armangle_40dmd(:,2);

x9=armangle_50dmd(:,1);
y9=armangle_50dmd(:,2);

x10=armangle_200dmd(:,1);
y10=armangle_200dmd(:,2);

%% Plots
figure(1)
subplot(6,1,1)
stairs(x4,y4, 'r', 'Linewidth', 2)
title('Arm Angle for DMD=0')
xlabel('Time(s)')
ylabel('Output')
ylim([-200 50])
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=8;

subplot(6,1,2)
stairs(x5,y5, 'r', 'Linewidth', 2)
title('Arm Angle for DMD=10')
xlabel('Time(s)')
ylabel('Output')
ylim([-200 50])
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=8;

subplot(6,1,3)
stairs(x6,y6, 'r', 'Linewidth', 2)
title('Arm Angle for DMD=30')
xlabel('Time(s)')
ylabel('Output')
ylim([-200 50])
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=8;

subplot(6,1,4)
stairs(x7,y7, 'r', 'Linewidth', 2)
title('Arm Angle for DMD=39')
xlabel('Time(s)')
ylabel('Output')
ylim([-200 50])
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=8;

subplot(6,1,5)
stairs(x8,y8, 'r', 'Linewidth', 2)
title('Arm Angle for DMD=40')
xlabel('Time(s)')
ylabel('Output')
ylim([-200 50])
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=8;

subplot(6,1,6)
stairs(x9,y9, 'r', 'Linewidth', 2)
title('Arm Angle for DMD=50')
xlabel('Time(s)')
ylabel('Output')
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=8;

