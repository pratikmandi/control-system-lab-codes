clc;
s=tf('s');
sys=10*(s+5)/(s*(s+10)*(s+100));
bode(sys);
margin(sys);
grid on;