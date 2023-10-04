%Compute blood flow through a vessel segment using Poiseuille's Law
clear all; 
close all;
% load parameter file containing variables
HW3_params;
% create pressure vector including values of input parameters
P1(1:20)=P1d;
P1(21:40)=P1s;
npts=40; % 40 represents 4 seconds real time
% compute resistance in Pa*s/m^3
R=(8*viscosity*length)/(pi*(diam/2)^4); 
% compute flow in mL/s
for ptnum=1:npts
    % pressure change/resistance
    Q(ptnum)=((P1(ptnum)-P2)/R)*(100^3); % convert from m^3 to cm^3 (mL)
end
% plot P and Q in tiled layout with P on top
time=0:0.1:3.9;
nexttile;
plot(time,P1);
xlabel('Time (s)');
ylabel('Pressure (mmHg)');
title('Pressure Over Time');
nexttile;
plot(time,Q);
xlabel('Time (s)');
ylabel('Flow (mL/s)');
title('Flow Over Time');

