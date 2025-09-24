clc;clear;close all;

data = load('data_of_Figure_5_3_a.txt');
freq = data(:,1);
delta2_1 = data(:,2);
delta2_2 = data(:,3);
delta2_3 = data(:,4);
delta2_4 = data(:,5);
delta2_5 = data(:,6);
delta2_6 = data(:,7);
delta2_7 = data(:,8);
delta2 = [delta2_1 delta2_2 delta2_3 delta2_4 delta2_5 delta2_6 delta2_7];

figure
semilogy(freq, delta2,'LineWidth',1.5);
legend('$\delta_2=2^2$','$\delta_2=2^3$','$\delta_2=2^4$','$\delta_2=2^5$','$\delta_2=2^6$','$\delta_2=2^7$','$\delta_2=2^8$', 'Interpreter', 'latex');
xlabel('Frequency(Hz)', 'Interpreter', 'latex'); ylabel('Scattering intensity $|u^s|^2$(a.u.)', 'Interpreter', 'latex');
set(gca,'ytick',[]) 
xlim([1.49E15 1.61E15]);
grid off;
