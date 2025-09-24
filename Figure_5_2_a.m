clc;clear;close all;

data = load('data_of_Figure_5_2_a.txt');
freq = data(:,1);
delta1 = [data(:,12) data(:,11) data(:,10) data(:,9) data(:,8)...
    data(:,7) data(:,2) data(:,3) data(:,4)];

colors = [
    0.1216, 0.4667, 0.7059;  
    1.0000, 0.4980, 0.0549;  
    0.1725, 0.6275, 0.1725;  
    0.8392, 0.1529, 0.1569;  
    0.5804, 0.4039, 0.7412;  
    0.5490, 0.3373, 0.2941;  
    0.8902, 0.4667, 0.7608;  
    0.4980, 0.4980, 0.4980;  
    0.7373, 0.7412, 0.1333   
]; 

figure;
for i = 9:-1:1
    semilogy(freq, delta1(:,i), ...
        'LineWidth', 1.5, ...
        'Color', colors(i,:));  
    hold on;
end
hold off;

legend('$\delta_1=2^{5}$','$\delta_1=2^{4}$','$\delta_1=2^{3}$',...
    '$\delta_1=2^{2}$','$\delta_1=2^{1}$','$\delta_1=2^{0}$',...
    '$\delta_1=2^{-1}$','$\delta_1=2^{-2}$','$\delta_1=2^{-3}$',...
    'Interpreter', 'latex');

xlabel('Frequency(Hz)', 'Interpreter', 'latex'); 
ylabel('Scattering intensity $|u^s|^2$(a.u.)', 'Interpreter', 'latex');
set(gca,'ytick',[])
% title('');
xlim([1.50E15 1.60E15]);
grid off;

