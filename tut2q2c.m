syms f(x);
f(x)=27*x^4+162*x^3-180*x^2+62*x-7;
g(x)=diff(f(x));
x0=1;
while(abs(f(x0))>10^(-6))
    x0=x0-3*f(x0)/g(x0);
end
double(x0)