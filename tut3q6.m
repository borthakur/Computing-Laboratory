A = [1 1 -1;1 2 -2;-2 1 1];
b = [1;1;1];
[m,n] = size(A);
L = zeros(m,m);
U = zeros(n,n);
for k = 1:m
    U(k,:) = A(k,:) - L(k,1:k-1)*U(1:k-1,:);
    L(:,k) = (A(:,k) - L(:,1:k-1)*U(1:k-1,k))/U(k,k);
end

y = zeros(m,1);
for k=1:m
    y(k)=(b(k)-L(k,1:k-1)*y(1:k-1))/L(k,k);
end

x=zeros(n,1);
for k=1:m
    x(m-k+1)=(y(m-k+1)-U(m-k+1,m-k+2:m)*x(m-k+2:m))/U(m-k+1,m-k+1);
end

x