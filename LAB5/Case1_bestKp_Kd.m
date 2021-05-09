close all;
clc;

x1 = armangle_KI_0366(:,1);
y1 = armangle_KI_0366(:,2);

x2 = armangle_KI_06(:,1);
y2 = armangle_KI_06(:,2);

x3 = armangle_KI_08(:,1);
y3 = armangle_KI_08(:,2);

x4 = armangle_KI_1(:,1);
y4 = armangle_KI_1(:,2);

x5 = armangle_KI_1_25(:,1);
y5 = armangle_KI_1_25(:,2);

x6 = armangle_KI_1_5(:,1);
y6 = armangle_KI_1_5(:,2);

x7 = armangle_KI_2(:,1);
y7 = armangle_KI_2(:,2);

x8 = armangle_KI_2_5(:,1);
y8 = armangle_KI_2_5(:,2);

x9 = armangle_KI_3(:,1);
y9 = armangle_KI_3(:,2);

x10 = armangle_KI_3_66(:,1);
y10 = armangle_KI_3_66(:,2);
%%
figure(1)
stairs(x1,y1, 'LineWidth', 3)
hold on
stairs(x2,y2, 'LineWidth', 3)
hold on
stairs(x3,y3, 'LineWidth', 3)
hold on
stairs(x4,y4, 'LineWidth', 3)
hold on
stairs(x5,y5, 'LineWidth', 3)
hold on
stairs(x6,y6, 'LineWidth', 3)
hold on
stairs(x7,y7, 'LineWidth', 3)
hold on
stairs(x8,y8, 'LineWidth', 3)
hold on
stairs(x9,y9, 'LineWidth', 3)
hold on
stairs(x10,y10, 'LineWidth', 3)
t=title('Arm Angle Response for K_p=3.658536, K_d=0.7317072, K_i = [0.366, 0.6, 0.8, 1, 1.25, 1.5, 2, 2.5, 3, 3.66]')
t.FontSize=20;
xlabel('Time (s)')
xlim([0 255])
ylabel('Arm Angle Position')
l=legend('K_i=0.366', 'K_i=0.6', 'K_i=0.8', 'K_i=1', 'K_i=1.25', 'K_i=1.5','K_i=2', 'K_i=2.5', 'K_i=3', 'K_i=3.66')
l.FontSize=20;
grid
%%
figure(2)
stairs(x7,y7, 'LineWidth', 3)
t=title('Arm Angle Response for K_p=3.658536, K_d=0.7317072, K_i=2')
t.FontSize=20;
xlabel('Time (s)')
xlim([0 255])
ylabel('Arm Angle Position')
l=legend('K_i = 2')
l.FontSize=30;
grid
