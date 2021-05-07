function  [root,x, num_itr] = newton_raph(fun,dfunc,x_0)
tol = 1e-6;
for i = 1:20
    dx = -feval(fun,x_0)/feval(dfunc,x_0);
    x(i) = x_0 + dx;
    if abs(dx)<tol
        root = x(i);
       num_itr = i;
        return
    end
        x_0 = x(i);
end
    root = NaN;
end
