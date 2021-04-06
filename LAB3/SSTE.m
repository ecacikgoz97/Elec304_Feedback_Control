theta_s = -13.7
theta_d= -15
K_p=0.1
dmd=39

a = 44.77590677;
b = -5.753388299;
c = -1521.244887;
g = 1484.4919;





SSTE1 = -(a*dmd + c + b*theta_s)/(a*K_p)
t=[(a*(dmd+K_p*theta_d) + c)/(b-a*K_p)]
SSTE2 = theta_d - [(a*(dmd+K_p*theta_d) + c)/(b-a*K_p)]