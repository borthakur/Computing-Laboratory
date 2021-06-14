A = [4.1 2.8;9.7 6.6];
[m,n] = size(A);
c1 = sum(A,1);
max=c1(1);
for i=2:n
    if(c1(i)>max)
        max = c1(i);
    end
end
cond1 = max
cond2 = sqrt(sum(sum(A.*A)))
cinf = sum(A,2);
max=cinf(1);
for i=2:n
    if(cinf(i)>max)
        max = cinf(i);
    end
end
condinf = max
