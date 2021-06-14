A=[1 -1 3;0 2 -3;0 0 -6.5];
b=[1;7;6.5];
[m,n]=size(A);
x=zeros(n,1);
for k=1:m
    x(m-k+1)=(b(m-k+1)-A(m-k+1,m-k+2:m)*x(m-k+2:m))/A(m-k+1,m-k+1);
end
x