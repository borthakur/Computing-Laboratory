syms f(x);
syms p(x);
syms q(x);
f(x) = x^3 + 15; %Enter f(x)
p(x) = x^2 + 5*x + 63; %Enter p(x)
q(x) = x + 4; %Enter q(x)
g0 = 3; %Enter g_0
g1 = 21; %Enter g_1
n = 10; %Enter n

A = zeros(n-1);
b = zeros(n-1,1);
x = zeros(1,n+1);
h = (g1-g0)/n;
x(1,1) = g0;
for i=2:n+1
    x(1,i) = g0 + h*(i-1);
end
A(1,1) = 2 + q(x(1,2))*h*h;
A(1,2) = -1 + 1/2*p(x(1,2))*h;
b(1,1) = (1+1/2*p(x(1,2))*h)*g0 + h*h*f(x(1,2));
for i=2:n-2
    A(i,i-1) = -1 -1/2*p(x(1,i+1))*h;
    A(i,i) = 2 + q(x(1,i+1))*h*h;
    A(i,i+1) = -1 + 1/2*p(x(1,i+1))*h;
    b(i,1) = h*h*f(x(1,i+1));
end
A(n-1,n-2) = -1 -1/2*p(x(1,n))*h;
A(n-1,n-1) = 2 + q(x(1,n))*h*h;
b(n-1,1) = (1 - 1/2*p(x(1,n))*h)*g1 + h*h*f(x(1,n));

u = A\b

