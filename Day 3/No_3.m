clc;
clear all;
close all;
x=input('First Input Sequence:');[1 2 3 4]
y=input('Second Input Sequence:');[1 3 3 4]
%% Autocorrelation of x
Rxx=xcorr(x);
disp('Auto Correlation Values of x :');
disp(Rxx);

%% Autocorrelation of y
Ryy=xcorr(y);
disp('Auto Correlation Values of y :');
disp(Ryy);

%% Crosscorrelation of xy
Rxy=xcorr(x,y);
disp('Auto Correlation Values of xy :');
disp(Rxy);

%% Crosscorrelation of yx
Ryx=xcorr(y,x);
disp('Auto Correlation Values of yx :');
disp(Ryx);

t=((-length(x)/2-1):1:length(x)-1);
stem(t,Rxy);
xlabel('Time');
ylabel('Amplitude');
title('Autocorrelation');