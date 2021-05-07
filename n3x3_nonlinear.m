syms x y z
%eq1=exp(x)+sqrt(y)-z.^3-2; eq2=x.^2-y-z-5; eq3=x+exp(y-1)+z-7;
%eq1=3*x-cos(y*z)-1.5; eq2=4*x-625*(y^2)+2*z-1; eq3=20*z+exp(-x*y)+9;
eq1=x^2+y^2+z^2-6; eq2=x^2-y^2+2*z^2-2; eq3=2*x^2+y^2-z^2-3;
eqs = [eq1, eq2, eq3]
[x,y,z]=vpasolve(eqs,[x,y,z])
