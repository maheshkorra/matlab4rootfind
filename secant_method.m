function [root,x,iteration] = secant_method(func,x1,x2)
% Secant Method in MATLAB 
f = func;
tol = 1e-6; 
x(1) = x1;
x(2) = x2;

iteration = 0;
 
for i=3:1000
   x(i) = x(i-1) - (f(x(i-1)))*((x(i-1) - x(i-2))/(f(x(i-1)) - f(x(i-2))));
    iteration = iteration+1;
    if abs((x(i)-x(i-1))/x(i))*100<tol
        iteration = iteration;
        root = x(i);
        break
    end
end

end