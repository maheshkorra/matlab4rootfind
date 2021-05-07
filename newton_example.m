clc 
clear all
func = @(x)(x^3 - 10 * x^2 + 5);

dfunc = @(x)(3 * x^2 - 20 * x)

x_0 = -1; 

[root,x,num_itr] = newton_raph(func,dfunc,x_0)
t=-1:0.01:2;
 for i=1:301
     z(i)=func(t(i));
 end
 figure
 plot(t,z)
 hold on
 plot(root,func(root),'o')
 grid on
 
