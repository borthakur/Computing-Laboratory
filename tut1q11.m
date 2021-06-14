syms f(x);
f(x)=x^2-4;
g(x)=diff(f(x));
m=1;
while abs(f(m))>10^(-4)
    m = m - f(m)/g(m);
end
double(m)