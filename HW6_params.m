% Parameters to plot vessel pressure and calculate avg flow
P1=11; % pressure at start of vessel, mmHg
V2i=0.475; % initial vessel volume, L
Vr=0.060; % residual volume, L
C2=0.05; % vessel compliance, L/mmHg
R1=30; R2=30; % resistance in 1st/2nd half of vessel, mmHg*s/L
P3d=3; P3s=25; % P3 value during diastole/systole, mmHg
dt=0.01; N=100; % time increment, 1 second real time
V2(1)=V2i; % set initial V2 value



