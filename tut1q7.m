a=zeros(1,10);
a(1)=0;
a(2)=1;
i=3;
while i<21
    a(i)=a(i-1)+a(i-2);
    i=i+1;
end
a