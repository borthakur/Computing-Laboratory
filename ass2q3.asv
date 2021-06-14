a = [0 5 2 6 8 2]; % Input a here
b = [8 3 4 1 8 5]; % Input b here
c = [1 6 9 4 9 0]; % Input c here
d = [1 3 8 2 2 9]; % Input d here
n = size(a,2);

c_d = zeros(1,n-1);
for i=1:n-1
    if(i==1)
        c_d(1,i) = c(1,i)/b(1,i);
    else
        c_d(1,i) = c(1,i)/(b(1,i)-a(1,i)*c_d(1,i-1));
    end
end

d_d = zeros(1,n);
for i=1:n
    if(i==1)
        d_d(1,i) = d(1,i)/b(1,i);
    else
        d_d(1,i) = (d(1,i)-a(1,i)*d_d(1,i-1))/(b(1,i)-a(1,i)*c_d(1,i-1));
    end
end

x = zeros(n,1);
x(n) = d_d(1,n);
for i=2:n
    x(n-i+1) = d_d(1,n-i+1) - c_d(1,n-i+1)*x(n-i+2);
end
x % Answer