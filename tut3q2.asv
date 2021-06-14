A=[1 0 0;1 1 0;3 0.5 1];
b=[1;2;1];
[m,n]=size(A);
x=zeros(n,1);
for k=1:m
    x(k)=(b(k)-A(k,1:k-1)*x(1:k-1))/A(k,k);
end
x