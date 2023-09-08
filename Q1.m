
syms t

T0 = 0.1;
w0 = 2*pi/T0;
 
a0 = (1/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05)),t,0,T0);
a1 = (2/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05))*cos(w0*t),t,0,T0);
a2 = (2/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05))*cos(2*w0*t),t,0,T0);
a3 = (2/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05))*cos(3*w0*t),t,0,T0);
b1 = (2/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05))*sin(w0*t),t,0,T0);
b2 = (2/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05))*sin(2*w0*t),t,0,T0);
b3 = (2/T0) .* int((step_fn(t)-(2/0.1).*rmp_fn(t-0.05))*sin(3*w0*t),t,0,T0);
