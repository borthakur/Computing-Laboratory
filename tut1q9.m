a=0;
b=1;
while q9fun(a)*q9fun(b)>0
    b=b+1;
end
if q9fun(a)==0
    disp(a)
elseif q9fun(b)==0
    disp(b)
else
    m=(a+b)/2;
    while q9fun(m)>exp(-4) | q9fun(m)<-exp(-4)
        if q9fun(m)*q9fun(a)>0
            a=m;
        else
            b=m;
        end
        m=(a+b)/2;
    end
    disp(m)
end