k=10;
k=k+1;%Since we are finding from k=0 to k=10
syms f(x);
f(x)=x^4-16*x^3+89*x^2-194*x+120;
u=zeros(1,k);
v=zeros(1,k);
u(1,1)=0; % u0 chosen such that f(u0)=120>0
v(1,1)=2; % v0 chose such that f(v0)=-24<0
i=1;
w=double((u(1,i)*f(v(1,i))-v(1,i)*f(u(1,i)))/(f(v(1,i))-f(u(1,i))));
while i<=10
    if f(w)*f(u(1,i))>0
        u(1,i+1)=w;
        v(1,i+1)=v(1,i);
    else
        v(1,i+1)=w;
        u(1,i+1)=u(1,i);
    end
    i=i+1;
    w=double((u(1,i)*f(v(1,i))-v(1,i)*f(u(1,i)))/(f(v(1,i))-f(u(1,i))));
end
double(f(u)) % Values of f(ui) : 0<=i<=k
double(f(v)) % Values of f(vi) : 0<=i<=k