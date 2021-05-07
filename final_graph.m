clc
clear all
func = @(x)(x^3 -  x - 1)
dfunc = @(x)(3*x^2 - 1)

 x1 = 1; x2 = 2; dx=0.1;
%  x1=1;x2=2;

 %increment method
 [r_root,x,i] = rootsearch(func,x1,x2,dx);
 r_ite=1:1:i;
 for i=1:i
     r_er(i)=(abs(x(i+1)-r_root)*100)/abs(r_root);
 end
 r_er
 
 %bisect method
 [b_root,x,i] = bisect_method(func,x1,x2);
  b_ite=1:1:i;
 for i=1:i  
     b_er(i)=(abs(x(i)-b_root)*100)/abs(b_root);
 end
 b_er
 
 %newton method
 [n_root,x,i] = newton_raph(func,dfunc,x1);
 n_ite=1:1:i;
 for i=1:i
     n_er(i)=(abs(x(i)-n_root)*100)/abs(n_root);
 end
 n_er
 
 %secent method
 [s_root,x,iteration] = secant_method(func,x1,x2);
 s_ite=1:1:iteration-2;
 for i=1:iteration-2 
     s_er(i)=(abs(x(i+2)-s_root)*100)/abs(s_root);
 end
 s_er
 
 %roots
 increment_root=r_root
 bisect_root=b_root
 newton_root=n_root
 secent_root=s_root
 
 figure
 plot(r_ite,r_er) %increment
 hold on
 plot(b_ite,b_er)  %bisect
 hold on
 plot(n_ite,n_er)  %newton
 hold on 
 plot(s_ite,s_er) %secant
 hold on
 xlabel('iteration')
 ylabel('true percent relative error')
 legend('increment','bisect','newton','secent')
 grid on