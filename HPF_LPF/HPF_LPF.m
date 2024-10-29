clc;
R=46000;
C=0.33e-6;
LPF=tf(1,[R*C 1]);
HPF=tf([R*C 0],[R*C 1]);
bodeplot(LPF, 'b', HPF, 'r');
legend('Low Pass Filter (LPF)', 'High Pass Filter (HPF)');
grid on;