% Part (i)
disp("Part (i)")

A = [10 1;1 10]; % Input A
b = [11;11]; % Input b

x0 = [1/2;1/2]; % Input initial guess
n = size(x0,1);
x1 = zeros(n,1);
tol = 10^(-4); % Input tolerance

diff = tol+1;
while diff>tol
    for i=1:n
        x1(i,1) = 1/A(i,i)*[b(i,1)-A(i,1:i-1)*x1(1:i-1,1)-A(i,i+1:n)*x0(i+1:n,1)];
    end
    diff = max(abs(x1-x0));
    x0 = x1;
end
disp("Ans = ")
disp(x1)

% Part (ii)
disp("Part (ii)")

A = [4 1 -1;2 7 1;1 -3 12]; % Input A
b = [3;19;31]; % Input b

x0 = [0;0;0]; % Input initial guess
n = size(x0,1);
x1 = zeros(n,1);

B = A;
C = b;
for i=1:n
    C(i,1) = C(i,1)/A(i,i);
    for j=1:n
        if(i==j)
            B(i,i)=0;
        else
            B(i,j)=-B(i,j)/A(i,i);
        end
    end
end

diff = tol+1;
while diff>tol
    x1 = B*x0 + C;
    diff = max(abs(x1-x0));
    x0 = x1;
end
disp("Ans = ")
disp(x1)