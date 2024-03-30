clc;
clear all;
close all;
x= [ 0 0 2 1 -4 -3 -2 -1 0 1 3 2 5 1 -4 -1 -1 -2 ];
y= [ 3 2 1 -6 -4 -3 -1 -2 1 1 2 3 1 4 6 2 1 0 ] ;
%% Autocorrelation of x
Rxx=xcorr(x);
disp('Auto Correlation Values of x :');
disp(Rxx);

%% Autocorrelation of y
Ryy=xcorr(y);
disp('Auto Correlation Values of y :');
disp(Ryy);

%% Autocorrelation of xy
Rxy=xcorr(x,y);
disp('Auto Correlation Values of xy :');
disp(Rxy);

%% Autocorrelation of yx
Ryx=xcorr(y,x);
disp('Auto Correlation Values of yx :');
disp(Ryx);

t=(-16:1:18);
disp(length(t));
stem(t,Rxy);
xlabel('Time');
ylabel('Amplitude');
title('Cross correlation');