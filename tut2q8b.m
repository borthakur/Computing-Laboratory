syms f(x);
f(x)=x*cos(x);
g(x)=diff(f(x));
lim=exp(-5);
x0=3.1415926/2;
while(double(abs(f(x0)))>lim)
    x0=x0-f(x0)/g(x0);
end
double(x0)