clc;                                %clear screen
clear all;                          %clear workspace
close all;                          %close all fiures windows

%to generate unit impulse signal
t = -2:1:2;                         %Define time vector
y = [zeros(1,2),ones(1),zeros(1,2)];%Define Amplitude values
subplot(2,2,1);
stem(t,y);
xlabel('time'); ylabel('amplitude'); 
title('Unit Impulse signal'); 

% to generate unit step
N = input('enter the value of N = '); % define the length of unit step signal
t = 0 : N-1;
y1=ones(1,N);
subplot(2,2,2);
stem(t,y1);
xlabel('time');
ylabel('amplitude');
title('Unit Step signal');

% to generate ramp signal
N1 = input('enter the value of N1 = '); % Define the length of unit ramp signal
t = 0 : N1;
subplot(2,2,3);
stem(t,t);
xlabel('time');
ylabel('amplitude');
title('Ramp signal');

% to generate exponential 
N2=input('enterthelengthN2='); 
t = 0:1/4:N2;
a = input('enter the value of a = '); 
y2 = exp(a*t);
subplot(2,2,4);
stem(t,y2);
xlabel('time'); 
ylabel('amplitude'); 
title('Exponential signal');

% to generate sine wave 
t = 0:1/32:2;
x = sin(2*pi*t); 
figure(2); 
subplot(2,1,1); 
stem(t,x);
xlabel('time'); ylabel('amplitude'); title('Sine wave');

% to generate Cosine wave 
t = 0:1/32:2;
x = cos(2*pi*t); 
subplot(2,1,2); 
stem(t,x); 
xlabel('time'); 
ylabel('amplitude'); 
title('Cosine wave');
