i = 1;
c=1;
while floor(i/10^99)==0
    c=c+1;
    i=i*c;
end
if(floor(i/10^99)<10)
    c
else
    "Does Not Exist"
end