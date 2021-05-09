close all;
clc;

x1 = armangle_case3(:,1);
y1 = armangle_case3(:,2);

%%
figure(2)
stairs(x1,y1, 'LineWidth', 3)
t=title('Arm Angle Output with Ziegler–Nichols Method')
t.FontSize=25;
xlabel('Time (s)')
xlim([0 255])
ylabel('Arm Angle Position')
l=legend('K_p=0.5; K_d=0.2; K_i=0.1')
l.FontSize=30;
grid