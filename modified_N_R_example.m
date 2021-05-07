clc 
clear all
func = @(x)(x^3 + 2*x^2 - 7*x + 4);

dfunc = @(x)(3 * x^2 + 4 * x - 7)

d2func =  @(x)(6 * x + 4 )
x_0 = -1; 

[root,iteration] = modified_newton_raph(func,dfunc,d2func,x_0)
t=-3:0.01:2;
 for i=1:501
     z(i)=func(t(i));
 end
 figure
 plot(t,z)
 hold on
 plot(root,func(root),'o')
 grid on