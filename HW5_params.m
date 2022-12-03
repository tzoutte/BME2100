% parameters to calculate compliance of left ventricle
Chs=0.001; % LV compliance end of systole, L/mmHg
Chd=0.015; % LV compliance end of diastole, L/mmHg
dt=0.001; % time change, seconds
N=800; 
Ts=0.030; % time constants, systole/diastole
Td=0.060; 
t=0:dt:(N-1)*dt; % 800 element time vector, seconds
