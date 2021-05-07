function  [root,num_itr] = modified_newton_raph(func,dfunc,d2func,x_0)
tol = 1e-6;
for i = 1:20
    iteration = i;
    dx = (func(x_0)*dfunc(x_0))/((dfunc(x_0))^2-func(x_0)*d2func(x_0))
    x = x_0 - dx
    if abs(dx)<tol
        root = x;
       num_itr = i;
        return
    end
        x_0 = x;
end
    root = NaN;
end
