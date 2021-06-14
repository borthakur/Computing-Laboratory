A = [4 1 -1;5 1 2;6 1 1];
b = [-2;4;6];
for k=1:m-1
    for l=k+1:m
        b(l) = b(l) - b(k)/A(k,k)*A(l,k);
        A(l,:) = A(l,:) - A(k,:)/A(k,k)*A(l,k);
    end
end
[m,n]=size(A);
x=zeros(n,1);
for k=1:m
    x(m-k+1)=(b(m-k+1)-A(m-k+1,m-k+2:m)*x(m-k+2:m))/A(m-k+1,m-k+1);
end
x