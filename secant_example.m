clc
clear all
func = @(x)(x^3 -  x - 1);

 x1 = 1; x2 = 2;
%  x1=1;x2=2;
 [root,x,iteration] = secant_method(func,x1,x2)
 t=-1:0.01:2;
 for i=1:301 
     z(i)=func(t(i));
 end
 
 figure
 plot(t,z)
 hold on
 plot(root,func(root),'*')
 grid on
  