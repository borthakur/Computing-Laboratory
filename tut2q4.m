syms f(x);
f(x)=x-2+log(x);
g(x)=diff(f(x));
x0=1.5;
while(double(abs(f(x0)))>10^(-3))
    x0=x0-f(x0)/g(x0);
end
double(x0)