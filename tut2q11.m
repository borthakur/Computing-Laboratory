syms f(x);
syms p(x);
p(x)=x^2;
q(x)=diff(p(x));
f(x)=q(x)*(x^2)/(x-1)+1;
g(x)=diff(f(x));
lim=10^(-3);
x0=0.5;
while(double(abs(f(x0)))>lim)
    x0
    x0=x0-f(x0)/g(x0);
end
double(x0)
double(x0)^2