i=0;
f = @(x) exp(-x)-x;
a=0;
b=1;
m=0.5;
while(abs(f(m))>10^(-4))
    if(f(a)*f(m)>0)
        a=m;
    else
        b=m;
    end
    i=i+1;
    m=(a+b)/2;
end
i
