syms f(x);
f(x)=(x+sqrt(x))*(20-x+sqrt(20-x))-155.55;
g(x)=diff(f(x));
lim=10^(-5);
x0=7;
while(double(abs(f(x0)))>lim)
    double(x0)
    x0=x0-f(x0)/g(x0);
end
double(x0)