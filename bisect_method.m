function [root,x,i] = bisect_method(func,x1,x2)
 tol = 1e-6;
f1 = feval (func,x1);
if f1==0
    root = x1;
    return
end
f2 = feval(func,x2);
if  f2==0
    root = x2;
    return
end
if (f1*f2) > 0
    error('root is not bracketed in (x1, x2)')
    return
end
n = ceil(log(abs(x2-x1)/tol)/log(2));
for i = 1: n
    x3 = 0.5 * (x1 + x2);
    x(i)=x3;
    root = x3;
    if i>1
        err=abs((x(i)-x(i-1))/x(i))*100;
     if err<tol
         i=i;
        break
     end
    end
    f3 = feval(func,x3);
    if f3 == 0
        root =  x3;
        return
    end
    if (f2*f3) < 0
        x1 = x3;
        f1 = f3;
    else
        x2 = x3; 
        f2 = f3;
    end
  
    
end
end

