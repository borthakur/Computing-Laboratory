A = [9 3 2 0 7;7 6 9 6 4;2 7 7 8 2;0 9 7 2 2;7 3 6 4 3];
b = [35;58;53;37;39];
[m,n]=size(A);
for k=1:m-1
    max = k;
    for i=k+1:m
        if(abs(A(i,k))>abs(A(max,k)))
            max = i;
        end
    end
    temp = A(k,:);
    A(k,:) = A(max,:);
    A(max,:) = temp;
    temp = b(k);
    b(k) = b(max);
    b(max) = temp;
    for l=k+1:m
        b(l) = b(l) - b(k)/A(k,k)*A(l,k);
        A(l,:) = A(l,:) - A(k,:)/A(k,k)*A(l,k);
    end
end
x=zeros(n,1);
for k=1:m
    x(m-k+1)=(b(m-k+1)-A(m-k+1,m-k+2:m)*x(m-k+2:m))/A(m-k+1,m-k+1);
end
x