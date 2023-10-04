%create 1x15 vector of ones
fibonacci=ones(1,15);
%change first element to zero (second element already=1)
fibonacci(1)=0; 
%create loop to assign Fibonacci sequence to elements 3-15 
for ii=3:15
    fibonacci(ii)=fibonacci(ii-1)+fibonacci(ii-2);
end  
%clear unnecessary variable
clear('ii'); 
%plot vector f with respect to x axis
plot(fibonacci);
xlabel('Element Number');
ylabel('Fibonacci Values');
title('Fibonacci Sequence');

            

