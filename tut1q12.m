syms f(x)
f(x) = x^2-exp(-x);
x1=0;
x2=10;
while abs(f(x2))>10^(-6)
    temp=x2;
    x2=x2-f(x2)*(x2-x1)/(f(x2)-f(x1));
    x1=temp;
end
double(x2)