clc;
s=tf('s');
sys=10*(s-1)/((s+10)*(s+20));

% Plot Nyquist plot
figure;
nyquist(sys);
grid on;

% Compute and display gain margin, phase margin, and crossover frequencies
[Gm, Pm, Wcg, Wcp] = margin(sys);

% Display results
disp(['Gain Margin: ', num2str(20*log10(Gm)), ' dB']);
disp(['Phase Margin: ', num2str(Pm), ' degrees']);
disp(['Gain Crossover Frequency: ', num2str(Wcg), ' rad/s']);
disp(['Phase Crossover Frequency: ', num2str(Wcp), ' rad/s']);

% Highlight the critical point (-1,0) on the Nyquist plot
hold on;
plot(-1, 0, 'rx', 'MarkerSize', 10, 'LineWidth', 2); % Critical point (-1,0)
text(-1.1, 0.1, 'Critical Point (-1,0)', 'Color', 'red', 'FontSize', 12);

% Add a title
title('Nyquist Plot with Critical Point');
hold off;

grid on;