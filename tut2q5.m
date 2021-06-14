syms f(x);
f(x)=x-1-cos(x);
g(x)=diff(f(x));
x0=0;
while(double(abs(f(x0)))>10^(-5))
    x0=x0-f(x0)/g(x0);
end
double(x0)