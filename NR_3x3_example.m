clear all 
clc
syms x y z
eq1=x^2+y^2+z^2-6;
eq2=x^2-y^2+2*z^2-2;
eq3=2*x^2+y^2-z^2-3;
xo=1; yo=1; zo=1; n=20;

[X,Y,Z]=Newton_Raphson_3var(eq1,eq2,eq3,xo,yo,zo,n)
