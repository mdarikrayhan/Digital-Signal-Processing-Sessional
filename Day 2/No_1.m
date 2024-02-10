clc;
close all;
f1=600;
f2=1200;
f3=1800;
fmax=max(max(f1,f2),f3);
T=1/min(min(f1,f2),f3);

t=0:0.001*T:2*T;


x=(5*sin(2*pi*f1*t))+(10*cos(2*pi*f2*t))+(15*cos(2*pi*f3*t));%Original Signal
subplot(2,2,1);
plot(t,x,'g');
title('Continuous Signal');
xlabel('t');
ylabel('x(t)');

%Sampling at the Nyquist Rate
fs1=2*fmax;%Nyquist Rate for sampling
n1=0:1/fs1:2*T;
x1=(5*sin(2*pi*f1*n1))+(10*cos(2*pi*f2*n1))+(15*cos(2*pi*f3*n1));
subplot(2,2,2);
stem(n1,x1);
hold on;
plot(n1,x1,'r');
title('Sampling at the Nyquist Rate');
xlabel('n');
ylabel('x[n]');

%Sampling rate greater than the Nyquist Rate(Over Sampling)
fs2=3.5*fmax;%Over sampling rate
n2=0:1/fs2:2*T;
x2=(5*sin(2*pi*f1*n2))+(10*cos(2*pi*f2*n2))+(15*cos(2*pi*f3*n2));
subplot(2,2,3);
stem(n2,x2);
hold on;
plot(n2,x2,'c');
title('Sampling Rate greater than the NyquistRate (Over Sampling)');
xlabel('n');
ylabel('x[n]');

%Sampling rate less than the Nyquist Rate (Under Sampling)
fs3=1.5*fmax;%under sampling rate
n3=0:1/fs3:2*T;
x3=(5*sin(2*pi*f1*n3))+(10*cos(2*pi*f2*n3))+(15*cos(2*pi*f3*n3));
subplot(2,2,4);
stem(n3,x3);
hold on;
plot(n3,x3,'m');
title('Sampling Rate less than the Nyquist Rate (Under Sampling)');
xlabel('n');
ylabel('x[n]');