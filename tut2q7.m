syms f(x);
f(x)=230*x^4+18*x^3+9*x^2-221*x-9;
g(x)=diff(f(x));
lim=exp(-3);
x0=0.5;
while(double(abs(f(x0)))>lim)
    x0=x0-f(x0)/g(x0);
end
double(x0)
x0=-0.5;
while(double(abs(f(x0)))>lim)
    x0=x0-f(x0)/g(x0);
end
double(x0)
x0=0;
x1=1;
m=(x0+x1)/2;
while(double(abs(f(m)))>lim)
    if(f(x0)*f(m)>0)
        x0=m;
    else
        x1=m;
    end
    m=(x0+x1)/2;
end
double(m)
x0=0;
x1=-1;
m=(x0+x1)/2;
while(double(abs(f(m)))>lim)
    if(f(x0)*f(m)>0)
        x0=m;
    else
        x1=m;
    end
    m=(x0+x1)/2;
end
double(m)