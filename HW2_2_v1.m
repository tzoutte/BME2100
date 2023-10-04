%create two element vector
linearParams=[3.5 1.0];
%create one element vector
nonlinearParams=5;
%create vector from 0-4.99 increasing by 0.01
timevals=0:0.01:4.99;
%create loop assigning yvals by doing vector operations for each timevals element
for ii=length(timevals) 
    yvals(ii)=linearParams(1)*timevals(ii)+linearParams(2)+cos(nonlinearParams*timevals(ii));
end 
%clear unnecessary variable
clear('ii'); 
%plot timevals(horizontal) with yvals(vertical)
plot(timevals,yvals); 
xlabel('Time');
ylabel('Y Values')
title('Y Values Over Time');


