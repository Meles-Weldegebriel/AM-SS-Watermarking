
% SIMULATION FOR PAM BASED WATERMARKING ON 4 QAM OFDM SIGNALS
% Probability of data bit error is compared for three scenarios


close all;
clear all;

figure()
% Unwatermarked OFDM signal Communication
x = [4,7,8,11,12,13,14,15];
pb_error = [0.0946,0.0251,0.0124,0.00387,0.0031,0.000298,0.000149,1.00e-06];
semilogy(x, pb_error,'b-*', 'LineWidth',1.5);
hold on

% Single subcarrier pseudonym communication
x = [4,6,9,11,13,14,15];
pb_error = [0.0622,0.042,0.0167,0.0051,0.000595,0.000149,1.300e-06];
semilogy(x, pb_error,'r-*', 'LineWidth',1.5);
hold on

% Watermarked OFDM signal
x = [4,6,8,10,12,14,16];
pb_error = [0.0886,0.0649,0.0487,0.0383,0.00578,0.00161,1.00e-06];
semilogy(x, pb_error,'k-*', 'LineWidth',1.5);

hold off


grid
set(gca,'FontSize',14)
set(gca,'ylim',[1e-5,0.1])
set(gca,'xlim',[6, 16])
xlabel('Eb/No [dB] at the Intended RX')
ylabel('P[Data Bit Error at the Intended RX]')
legend('Unwatermarked OFDM Signal','100% - 1S-AM-SS','20% - AM-SS')
%title('Experimental Results')
