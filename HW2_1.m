%unfreeze figure window
hold off; 
%create vector from 2-12 increasing by two
c=2:2:12;
%change elements 5-6 to 4
c(5:6)=4;
%create vector of ones
d=ones(1,6); 
%add vector d and c
e=d+c; 
%create vector from 1-6 increasing by one
x=1:1:6; 
%plot x(horizontal) with e(vertical)
plot(x,e); 
%create title
title('myplot2');
%label x axis
xlabel('x'); 
%label y axis
ylabel('e'); 
%create text on plot
text(3,5,'It Worked!'); 