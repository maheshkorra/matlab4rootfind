clc
clear all
func = @(x)(x^3 - 10 * x^2 + 5);
 x1 = -1; x2 = 0;
%  x1=-1;x2=0;
 [root,x,i] = bisect_method(func,x1,x2)
 t=-1:0.01:2;
 for i=1:301
     z(i)=func(t(i));
 end
 
 figure
 plot(t,z)
 hold on
 plot(root,func(root),'o')
 grid on
 

