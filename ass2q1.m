% Question 1(a)
A = [1 5 2;7 3 8;3 4 4]; % Input A here
[m,n] = size(A);
L = zeros(m,m);
U = zeros(n,n);
for k = 1:m
    U(k,:) = A(k,:) - L(k,1:k-1)*U(1:k-1,:);
    L(:,k) = (A(:,k) - L(:,1:k-1)*U(1:k-1,k))/U(k,k);
end

A
L
U

L*U

disp("As you can see, A = L*U")

% Question 1(b) 
b = [1;2;3]; % Input b here

y = zeros(m,1);
for k=1:m
    y(k)=(b(k)-L(k,1:k-1)*y(1:k-1))/L(k,k);
end

x=zeros(n,1);
for k=1:m
    x(m-k+1)=(y(m-k+1)-U(m-k+1,m-k+2:m)*x(m-k+2:m))/U(m-k+1,m-k+1);
end

x % Answer