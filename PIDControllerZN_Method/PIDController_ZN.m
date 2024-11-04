clc;
s=tf('s');
Kp=75.6;
Ki=100;
Kd=14.364;
G=1/((s+1)*(s+2)*(s+5));
C=Kp+Kd*s+(Ki/s);
H=(C*G)/(1+C*G);
stepplot(H)
grid on