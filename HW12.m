% Program to perform fourier transform on waveform
% and plot amplitude/phase angle for frequencies
clear vars;
clf;
% row vector for original waveform (V)
g=[0 5 0 0 -10 100 -10 0 0 0 10 0 0 0 0 0]; 
T=800e-3; % period of waveform (s)
N=length(g); % number of values
deltat=T/N; % calculate time increment

G=fft(g); % perform fast fourier transform
% convert to real values and remove redundancy
A=2*abs(G(1:9))/16; 
% calculate phase angle convert to degrees
phi=angle(G(1:9))*(180/pi); 
A(1)=abs(G(1)/16); % calculate the dc term
% create frequency vector (Hz.)
% and remove redundancy with final term 
f=[0:1/T:1/(2*deltat)];  
% time vector for original waveform, convert to ms
t=[deltat*10^3:deltat*10^3:T*10^3];  

plot(t,g); % plot original waveform
xlabel('Time (ms)');
ylabel('Voltage (µV)');
title('ECG Waveform')
figure;
% plot amplitude and phase angle over frequency
bar(f,A,0.5);
xlabel('Frequency (Hz.)');
ylabel('Amplitude');
xticks(0:1/T:1/(2*deltat));
title('Amplitude per Frequency');
figure;
bar(f,phi,0.5);
xlabel('Frequency (Hz.)');
ylabel('Phase Angle (deg)');
xticks(0:1/T:1/(2*deltat));
title('Phase Angle per Frequency');






