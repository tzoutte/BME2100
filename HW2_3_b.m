%Ask user to provide parameter file (m-file) and run it
pf=input('What parameter file do you want to use? \n', 's');
eval(pf)
%create yvals for each element of time vals with vector operations
yvals=linearParams(1)*timevals+linearParams(2)+cos(nonlinearParams*timevals);
%plot timevals(horizontal) with yvals(vertical)
plot(timevals,yvals); 
xlabel('Time');
ylabel('Y Values')
title('Y Values Over Time(params2)');
