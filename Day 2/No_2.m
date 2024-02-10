clc;
close all;
tfinal = 0.05;
t= 0:0.00005: tfinal;%runs for .00005/0.05 = 1000 times
fd= input('Enter the analog frequency of the sine wave : ');
xt = sin(2*pi*fd*t);%original signal

fs1 = 1.5*fd;
n1= 0: 1/fs1: tfinal;
xn = sin(2*pi*n1*fd);
subplot(3,1,1);
plot(t,xt,'b',n1,xn,'r*-');
title('Under Sampling at 1.5');

fs2= 2*fd;
n2= 0:1/fs2:tfinal;
xn = sin(2*pi*n2*fd);
subplot(3,1,2);
plot(t,xt,'b',n2,xn,'r*-');
title('Nyquist rate Sampling at 2');

fs3 = 2.5*fd;
n3= 0:1/fs3:tfinal;
xn = sin(2*pi*n3*fd);
subplot(3,1,3);
plot(t,xt,'b',n3,xn,'r*-');
title('Over sampling at 2.5');