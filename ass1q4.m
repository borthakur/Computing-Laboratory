syms f(x);
f(x)=tanh(x);
g(x)=diff(f(x));
s=0.1;
a=-10;
b=15;
m=(a+b)/2;
lim=10^(-10);
lim1=s*(b-a);
% Bisection method starts
while(b-a>=lim1)
    if(f(m)*f(b)>0)
        b=m;
    else
        a=m;
    end
    m=(a+b)/2;
end
% Newton's method starts
while(double(abs(f(m)))>lim)
    m=double(m-f(m)/g(m));
end
format long
disp(double(m))