
syms t

T0 = 0.1;
w0 = 2*pi/T0;

a0 =3/4 ;
a1 =-2/pi^2;
a2 =0 ;
a3 =-2/(9*pi^2);
b1 = 1/pi ;
b2=1/(2*pi);
b3 =1/(3*pi);
g_a = a0 + a1*cos(w0*t) + a2.*cos(2*w0*t) + a3.*cos(3*w0*t) + b1.*sin(w0*t) + b2.*sin(2*w0*t) + b3.*sin(3*w0*t);
g_a1 = a0 + a1.*cos(w0*t)+ b1.*sin(w0*t);
g_a2 = a0 + a1.*cos(w0*t)+ a2.*cos(2*w0*t) + b1.*sin(w0*t) + b2.*sin(2*w0*t) ;
g_a3 = a0 + a1.*cos(w0*t)+ a2.*cos(2*w0*t)+ a3.*cos(3*w0*t) + b1.*sin(w0*t) + b2.*sin(2*w0*t) + b3.*sin(3*w0*t);
g = step_fn(t)-(2/0.1).*rmp_fn(t-0.05);

mse1=(1/T0).*int( ((g - g_a1).^2) ,t,0,T0);
%for K = 2
mse2 =(1/T0).*int( ((g - g_a2).^2) ,t,0,T0);
%for K = 3
mse3 =(1/T0).*int( ((g - g_a3).^2),t ,0,T0);

disp('K MSE');
disp([1 mse1; 2 mse2; 3 mse3]);



