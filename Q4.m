t=-0.1:0.001:0.1;
T0 = 0.1;
w0 = 2*pi/T0;
a0 =3/4 ;
a1 =-2/pi^2;
 a2 =0 ;
a3 =-2/(9*pi^2);
b1 = 1/pi ;
b2=1/(2*pi);
b3 =1/(3*pi);

g_a = a0 + a1*cos(w0*t) + a2*cos(2*w0*t) + a3*cos(3*w0*t) + b1*sin(w0*t) + b2*sin(2*w0*t) + b3*sin(3*w0*t);
fc = 200;
c = 10*cos(2.*pi.*fc.*t);
s = g_a.*c;
S = fftshift(fft(s));
f = linspace(-500,500,length(s));
figure;
plot(f,abs(S));
xlabel('Frequency (Hz)'); ylabel('Amplitude');
title('Spectrum of Single Sideband Signal s(t)');

% Apply ideal bandpass filter to s(t)
s_filtered = s .* (abs(f) <= 50);
% Find spectrum of filtered signal s_filtered(t)
S_filtered = fftshift(fft(s_filtered));
% Plot spectrum of filtered signal s_filtered(t)
figure;
plot(f,abs(S_filtered));
xlabel('Frequency (Hz)'); ylabel('Amplitude');
title('Spectrum of Filtered Single Sideband Signal s_filtered(t)')
