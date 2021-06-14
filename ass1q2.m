syms f(x);
format long
f(x)=x^4-16*x^3+89*x^2-194*x+120; %Function f(x)
D(x)=(f(x+f(x))-f(x))/f(x);
lim=10^(-10);
x0=1.5; %Initial guess
count=1;
x1=x0;
x2=0;
x3=0;
while(double(abs(f(x0)))>lim)
    x0=double(x0-f(x0)/D(x0));
    if count==1
        count=count+1;
        x2=x0;
    elseif count==2
        count=count+1;
        x3=x0;
    else
        e4=abs(x0-x3);
        e3=abs(x3-x2);
        e2=abs(x2-x1);
        p=double(log(e4/e3)/log(e3/e2));
        disp(p)
        x1=x2;
        x2=x3;
        x3=x0;
    end
end
disp(x0)