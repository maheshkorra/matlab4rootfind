function [x2, x,i] = rootsearch(func,a, b ,dx)
x1 = a;
f1 = feval(func,x1);
x2 = a + dx;
f2 = feval(func,x2);
x(1)=x2;
i=0;
while (f1 * f2) > 0
    i=i+1;
    if x1 >= b
        x1=NaN;
        x2 = NaN;
        return
    end
    x1 = x2;
    f1 = f2;
    x2 = x1 + dx ;
    x(i+1)=x2;
    f2 = feval(func,x2);
end
