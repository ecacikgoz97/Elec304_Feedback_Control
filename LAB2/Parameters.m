clc;
dmd = 168.3631;
T_s = 0.01;
a = 0.7213;
b = 28.5629;
K_p = 190;
W_m_ss = 120.2;

a_g = 2 / (T_s*(a*K_p+1));
a_f = a*a_g;
%b_f - b_g = B
B = (2*b) / (T_s*(a*K_p+1));

fprintf('a_g = %.5f\n', a_g);
fprintf('a_f = %.5f\n', a_f);
fprintf('b_f - b_g = %.5f\n', B);

SSTE = -(a_f*dmd + B - a_g*W_m_ss)/(a_f*K_p);
fprintf('\nSSTE = %.5f\n', SSTE);

K_p1 = 20;
lambda1 = 1-T_s*(a_f*K_p1 + a_g);
fprintf('\nLambda1 = %f\n', lambda1);

K_p2 = 40;
lambda2 = 1-T_s*(a_f*K_p2 + a_g);
fprintf('\nLambda2 = %f\n', lambda2);

K_p3 = 100;
lambda3 = 1-T_s*(a_f*K_p3 + a_g);
fprintf('\nLambda3 = %f\n', lambda3);

K_p4 = 140;
lambda4 = 1-T_s*(a_f*K_p4 + a_g);
fprintf('\nLambda4 = %f\n', lambda4);

K_p5 = 190;
lambda5 = 1-T_s*(a_f*K_p5 + a_g);
fprintf('\nLambda5 = %f\n', lambda5);

K_p6 = 250;
lambda6 = 1-T_s*(a_f*K_p6 + a_g);
fprintf('\nLambda6 = %f\n', lambda6);

K_p7 = 500;
lambda7 = 1-T_s*(a_f*K_p7 + a_g);
fprintf('\nLambda7 = %f\n', lambda7);


X = [20 40 100 140 190 250 500];
Y = [abs(lambda1) abs(lambda2) abs(lambda3) abs(lambda4) abs(lambda5) abs(lambda6) abs(lambda7)];

figure(1)
plot(X, Y,'LineWidth', 1.5);
hold on
plot(X, Y, 'ro','LineWidth', 1.3);
t=title('|\lambda| Values for Increasing K_p');
t.FontSize=15;
xlabel('K_p (Gain)')
ylabel('\lambda')
grid