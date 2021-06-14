%We know that the equation [x=1/a] has the same solution as the equation
%[a-1/x=0]. Hence the solution can be found by applying Newton's algorithm
%on the function f(x)=a-1/x. We can see that the derivative of this
%function will be 1/x^2, and hence during each iteration, since g(x0) is
%being divided, only multiplications will take place. The final computation
%would be x0 - a*x0^2 + x0, where there are no divisions.

syms f(x);
a=150; %Value of a
f(x)=a-1/x;
g(x)=diff(f(x));
lim=10^(-10);
x0=0.00000001; % initial value of x0 should be close to zero for the algorithm to converge
while(double(abs(f(x0)))>lim)
    x0=double(x0-f(x0)/g(x0));
end
format long
disp(double(x0))