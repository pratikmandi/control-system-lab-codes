clc;
clear all;
% Define the transfer functions
H=tf(1, [1 11 10 0]);
Hd=tf(1, [1 11 10 0], 'InputDelay', 2); %Time delay of 2 sec.

% Plot the Bode plot for no time delay
figure;
bode(H);
legend('H (No Delay)');
title('Bode Plot With No Time Delay');
grid on
 
% Plot the Nyquist plot for no time delay
figure;
nyquist(H);
legend('H (No Delay)');
title('Nyquist Plot With No Time Delay');
grid on;
 
% Plot the Bode plot for 2 sec. time delay
figure;
bode(Hd);
legend('Hd (Delayed)');
title('Bode Plot With 2 Sec. Time Delay');
grid on
 
% Plot the Nyquist plot for 2 sec. time delay
figure;
nyquist(Hd);
legend('Hd (Delayed)');
title('Nyquist Plot With 2 Sec. Time Delay');
grid on;