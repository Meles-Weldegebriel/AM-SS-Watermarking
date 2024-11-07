
% SIMULATION FOR PAM BASED WATERMARKING ON 4 QAM OFDM SIGNALS
% SIMULATION PLOTS ARE ALSO COMPARED WITH EXPERIMENTAL RESULTS
% This algorithm plots the probability of pseudon bit error Vs Eb/No

close all;
clear all;

figure()

% m = 0.2 new algorithm
x = [-20,-19,-17,-15,-13,-11,-10];
pb_error = [3.17e-01, 2.87e-01, 1.46e-01, 4.64e-02, 9.52e-03, 5.95e-04, 5.0e-6];
semilogy(x, pb_error,'b-*', 'LineWidth',1.5);
hold on

% m = 0.2 simple PAM
x = [-17,-15,-13,-11,-9,-8];
pb_error = [2.66e-01, 1.67e-01, 7.02e-02, 1.61e-02, 1.07e-03, 5.0e-06];
semilogy(x, pb_error,'b--o', 'LineWidth',1.5);
hold on

% m = 0.3 with new algorithm
x = [-20,-19,-17,-15,-13,-11];
pb_error = [2.43e-01, 2.11e-01, 7.85e-02, 1.43e-02, 4.76e-04, 1.0e-6];
semilogy(x, pb_error,'r-*', 'LineWidth',1.5);
hold on

% m = 0.3 simple PAM
x = [-17,-15,-13,-11,-9];
pb_error = [1.53e-01,7.04e-02,3.07e-02,2.14e-03,5.0e-06];
semilogy(x, pb_error,'r--o', 'LineWidth',1.5);
hold off

grid
set(gca,'FontSize',14)
set(gca,'ylim',[1e-4, .5])
set(gca,'xlim',[-17, -8])
xlabel('Eb/No [dB] at Passive RX')
ylabel('P[Pseudonym Bit Error at Passive RX]')
legend('20% - AM-SS','20% - PAM','30% - AM-SS','30% - PAM')
%title('Simulation Vs Experimental Results')
