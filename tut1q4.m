n = input("Enter n:");
A = zeros(n,n);
for i=1:n
    A(i,n-i+1) = -1;
end
A