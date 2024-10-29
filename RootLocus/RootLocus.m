clc;
sys = tf([1 10 26 0], [1 2]); % G(s) = K(s+2)/s(s^2 + 10s + 26)
rlocus(sys)
title('Root Locus for G(s)= K(s+2)/s(s^2+10s+26)')
grid on;
ylim([-10 10]);