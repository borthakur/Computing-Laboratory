A=diag([1,2,3]);
b=[1;1;1];
n=size(b,1);
x=zeros(size(b));
i=1;
while i<=n
    x(i)=b(i)/A(i,i);
    i=i+1;
end
x