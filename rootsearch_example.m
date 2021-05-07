clc
clear all
func = @(x)(4*x^3 + 3*x^2 + 2*x + 1);
 a = -1 ; b = 1 ; dx = 0.1;
 [x2,x,i] = rootsearch(func,a,b,dx)
 t=-1:0.01:2;
 for i=1:301
     z(i)=func(t(i));
 end
 figure
 plot(t,z)
 hold on
 grid on
 plot(x2,func(x2),'o')
