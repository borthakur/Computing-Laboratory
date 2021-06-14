for n = 3:6
    fprintf("n = %i \n",n)
    H=zeros(n,n);
    for i=1:n
        for j=1:n
            H(i,j)=1/(i+j-1);
        end
    end
    H_inv = inv(H);
    [m,n] = size(H);
    c1 = sum(abs(H),1);
    max=c1(1);
    for i=2:n
        if(c1(i)>max)
            max = c1(i);
        end
    end
    cond1_H = max; % Column Norm for H
    cond2_H = sqrt(sum(sum(H.*H))); % Euclidean Norm for H
    cinf = sum(abs(H),2);
    max=cinf(1);
    for i=2:n
        if(cinf(i)>max)
            max = cinf(i);
        end
    end
    condinf_H = max; % Row Norm for H
    c1 = sum(abs(H_inv),1);
    max=c1(1);
    for i=2:n
        if(c1(i)>max)
            max = c1(i);
        end
    end
    cond1_H_inv = max; % Column Norm for H_inv
    cond2_H_inv = sqrt(sum(sum(H_inv.*H_inv))); % Euclidean Norm for H_inv
    cinf = sum(abs(H_inv),2);
    max=cinf(1);
    for i=2:n
        if(cinf(i)>max)
            max = cinf(i);
        end
    end
    condinf_H_inv = max; % Row Norm for H_inv
    
    cond_row = condinf_H*condinf_H_inv % Condition number using Row Norm
    cond_column = cond1_H*cond1_H_inv % Condition number using Column Norm
    cond_euc = cond2_H*cond2_H_inv % Condition number using Euclidean Norm
end

% We can see that the conditional numbers are very far from 1, and they
% become even farther as n increases. Thus, we can say that for an
% equation H*x=b, a small relative error in b can give a large relative 
% error in x, and relative error will be larger for larger values of n. We
% can also see that due to symmetry of the matrices, the row-norm and 
% column-norm conditional numbers are identical.