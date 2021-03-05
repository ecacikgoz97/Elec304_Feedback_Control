%% Elec304 Lab1: Arm Angle
% by Emre Can Acikgoz
%% Import data
x3=armangle(:,1);
y3=armangle(:,2);

%% Plot
figure(1)
stairs(x3,y3, 'r', 'Linewidth', 3)
title('Arm Angle')
xlabel('Time(s)')
ylabel('Output')
lgd=legend('Arm Angle','Location','southeast')
lgd.FontSize=12;
% It's doing a pendulum motion, because of friction it's decaying i.e. losing energy.