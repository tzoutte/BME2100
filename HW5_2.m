% script to compute and plot compliance of left ventricle
clearvars;
close all;
param5p2; 
% equation for LV compliance during systole
Chstemp=(Chd-Chs)*exp(-t(1:250)/Ts)+Chs; 
% equation for LV compliance during diastole
Chdtemp=(Chs-Chd)*exp(-t(1:550)/Td)+Chd; 
% use values from Chdtemp for last 100 mS of diastole
Ch(1:100)=Chdtemp(451:550); 
% use full Chstemp vector for systole
Ch(101:350)=Chstemp(1:250);
% use values from Chdtemp for first 450 mS of diastole
Ch(351:800)=Chdtemp(1:450);
% create plot of LV compliance over time (800 mS)
plot((t),Ch);
grid on;
xlabel('Time (s)');
ylabel('Ch (L/mmHg)');
axis([0 0.8 0 0.02]);
title('Change in LV Compiance Over Time');
