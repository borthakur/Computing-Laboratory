syms f(x);
f(x)=x^(1/3);
g(x)=diff(f(x));
x0=1;
while(abs(f(x0))>10^(-1))
    x0=x0-f(x0)/g(x0);
end
double(x0)