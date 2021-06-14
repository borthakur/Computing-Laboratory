syms f(x);
f(x)=x^3-2*x+2;
g(x)=diff(f(x));
lim=exp(-5);
x0=0;
while(double(abs(f(x0)))>lim)
    x0
    x0=x0-f(x0)/g(x0);
end
double(x0)