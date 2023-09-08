K = 3;
t = 0:0.001:T0;
g_a = a0 + a1*cos(w0*t) + a2*cos(2*w0*t) + a3*cos(3*w0*t) + b1*sin(w0*t) + b2*sin(2*w0*t) + b3*sin(3*w0*t);
g = step_fn(t)-(2/0.1).*rmp_fn(t-0.05);

figure
hold on
plot(t,g)
plot(t,g_a)
legend('g(t)','g_a(t)')