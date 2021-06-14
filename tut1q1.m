A = [3 4 5;6 7 2;3 5 9];
x = A(1,:);
y = A(2:3,:);
y = y';
y = y(:);
sum(A,1)
sum(A,2)
rank(A)
inv(A)
size(A)
diag(A)
[V,D] = eig(A)
trace(A)