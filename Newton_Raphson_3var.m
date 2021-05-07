function [X,Y,Z]=Newton_Raphson_3var(eq1,eq2,eq3,xo,yo,zo,n)

syms x y z
jaco= jacobian([eq1;eq2;eq3],[x,y,z]);
jaco=[diff(eq1,x) diff(eq1,y) diff(eq1,z) ; diff(eq2,x) diff(eq2,y) diff(eq2,z) ; diff(eq3,x) diff(eq3,y) diff(eq3,z) ; ] ;

i=0;
while i<n
j=subs(jaco,[x,y,z],[xo,yo,zo]);
j_i=j^-1;
eq1_o=subs(eq1,[x,y,z],[xo,yo,zo]); 
eq2_o=subs(eq2,[x,y,z],[xo,yo,zo]);
eq3_o=subs(eq3,[x,y,z],[xo,yo,zo]);
val=[xo;yo;zo]-j_i*[eq1_o;eq2_o;eq3_o];
val=double(val);
xo=val(1,1);
yo=val(2,1);
zo=val(3,1);
i=i+1;
end

X=xo;
Y=yo;
Z=zo;
fprintf('X is %10.8f, Y is %10.8f and Z is %10.8f\n',X,Y,Z)
end