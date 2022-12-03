% Script to plot vessel pressure and calculate avg. flow
clearvars;
clf;
HW6_params;
% create step function for P3 over time
P3(1:60)=P3d;  
P3(61:100)=P3s;
for ii=1:N
    P2(ii)=(V2(ii)-Vr)/C2; 
    % solve for Q3 using Poiseuille's law
    if P2(ii)>P3(ii) 
        Q3(ii)=(P2(ii)-P3(ii))/R2;  
    else, Q3(ii)=0;
    end
    Q1(ii)=(P1-P2(ii))/R1; 
    % solve for Q2 using conservation of volume
    Q2(ii)=Q1(ii)-Q3(ii); 
    % solve for V2 using Euler's method
    V2(ii+1)=V2(ii)+(Q2(ii)*dt); 
end 
t=0:dt:(N-1)*dt; % create 100  element time vector 
plot(t,P2); % plot P2 over time
xlabel('Time (s)');
ylabel('P2 (mmHg)');
title('Vena Cava Pressure Over Time')
grid on;
% calculate average volumetric flow rate 
Vave=mean(Q3)*60; % multiply by 60 for L/min
% display Vave on plot
text(0.3,8.2,sprintf('Ave flow rate = %1.1f L/min',Vave)); 








