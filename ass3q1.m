syms f(x,y);
f(x,y) = (y/x)-(y/x)^2;
h = 0.01;
n = 1/h;

x=zeros(1,n+1);
y=zeros(1,n+1);
for i = 1:n+1
    x(1,i) = 1 + (i-1)*h;
end
y(1,1) = 1;

for i=2:n+1
    k1 = h*f(x(1,i-1),y(1,i-1));
    k2 = h*f(x(1,i-1)+h/2,y(1,i-1)+k1/2);
    k3 = h*f(x(1,i-1)+h/2,y(1,i-1)+k2/2);
    k4 = h*f(x(1,i-1)+h,y(1,i-1)+k3);
    y(1,i) = y(1,i-1) + 1/6*(k1+2*k2+2*k3+k4);
end

fprintf("y(2) = %d",y(1,n+1))

plot(x,y)