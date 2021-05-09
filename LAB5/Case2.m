close all;
clc;

x1 = armangle_case1_1(:,1);
y1 = armangle_case1_1(:,2);

x2 = armangle_case1_2(:,1);
y2 = armangle_case1_2(:,2);

x3 = armangle_case1_3(:,1);
y3 = armangle_case1_3(:,2);

x4 = armangle_case1_4(:,1);
y4 = armangle_case1_4(:,2);

x5 = armangle_case1_5(:,1);
y5 = armangle_case1_5(:,2);

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
t=title('Arm Angle Response for Different Cases')
t.FontSize=25;
xlabel('Time (s)')
xlim([0 255])
ylabel('Arm Angle Position')
l=legend('Case1: K_p=3.709; K_d=0.742; K_i=3.709', 'Case2: K_p=7.165; K_d=0.716; K_i=5.732', 'Case3: K_p=3.161; K_d=0.949; K_i=1.582', 'Case4: K_p=3.727; K_d=0.745; K_i=2.236', 'Case5: K_p=5.1; K_d=0.765; K_i=1.53')
l.FontSize=30;
grid
%%
figure(2)
stairs(x2,y2, 'LineWidth', 3)
t=title('Arm Angle Response for Case2: K_p=7.165, K_d=0.716, K_i=5.732')
t.FontSize=25;
xlabel('Time (s)')
xlim([0 255])
ylabel('Arm Angle Position')
l=legend('Case2: K_p=7.165; K_d=0.716; K_i=5.732')
l.FontSize=30;
grid