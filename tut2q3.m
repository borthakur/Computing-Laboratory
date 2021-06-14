syms f(x);
f(x)=tan(x)-x;
g(x)=diff(f(x));
x0=4.6;
while(double(abs(f(x0)))>10^(-3))
    x0=x0-f(x0)/g(x0);
end
double(x0)
x0=4;
while(double(abs(f(x0)))>10^(-3))
    x0=x0-f(x0)/g(x0);
end
double(x0)