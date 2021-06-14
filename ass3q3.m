%{
The actual answer is 2*arctan(2)=2.651635. As we can see, (c) give the most accurate results, and the others are not very close to the answers.
The Gauss-Legendre quadrature method is usually more accurate for lower degree polynomials, and in fact gives exact results for degree <=5.
But this function isn't a polynomial. Here, the composite methods are coming out to be most accurate.
%}
syms f(x);
f(x) = 1/(1+x^2);
a = -4;
b = 4;

% Part (a)
disp("Part (a)")

ans_trap = double((b-a)/2*(f(a)+f(b)));

fprintf("Using Trapezoidal Rule: %d\n",ans_trap)

% Part (b)
disp("Part (b)")

ans_simp = double((b-a)/6 * (f(a) + 4*f((a+b)/2) + f(b)));

fprintf("Using Simpson’s Rule: %d\n",ans_simp)

% Part (c)
disp("Part (c)")
n = 10;

x1 = a:(b-a)/n:b;

comp_trap = 0;

for i = 1:n+1
    if(i==1 || i==n+1)
        comp_trap = comp_trap + f(x1(1,i))/2;
    else
        comp_trap = comp_trap + f(x1(1,i));
    end
end
comp_trap = double(comp_trap*(b-a)/n);

fprintf("Using  Composite Trapezoidal: %d\n",comp_trap)

comp_simp = 0;
for i = 1:n+1
    if(i==1 || i==n+1)
        comp_simp = comp_simp + f(x1(1,i));
    elseif(mod(i,2)==0)
        comp_simp = comp_simp + 4*f(x1(1,i));
    else
        comp_simp = comp_simp + 2*f(x1(1,i));
    end
end
comp_simp = double(comp_simp*(b-a)/3/n);

fprintf("Using  Composite Simpson: %d\n",comp_simp)

% Part (d)
disp("Part (d)")

g(x) = f((b-a)/2*x + (a+b)/2);

ans_gauss = double((b-a)/2 * [g(-1/sqrt(3))+g(1/sqrt(3))]);

fprintf("Answer using Gauss-Legendre quadrature: %d\nComparing with\n(a): %d\n(b): %d\n(c): %d   %d\n",ans_gauss,ans_trap,ans_simp,comp_trap,comp_simp)
%Reasoning at the top of script

