clc; 
clear all; 
close all;
n = -5:5;
x = ones(1,11); 
[r,lag] = xcorr(x, x);
disp ('Auto correlation sequence r(n) is ');
disp(r); 
subplot(2,1,1); 
stem (n, x);
xlabel('n');
ylabel('x(n)');
title('Plot of x(n)');
subplot(2,1,2);
stem(lag,r);
title('Autocorrelation output');
xlabel('n');
ylabel('r(n)');

%Verificaion of the auto correlation properties
Energy = sum(x.^2);
center_index= ceil(length(r)/2);
r_0=r(center_index);
if r_0==Energy
 disp('Rxx(0) gives energy -- proved');
else
 disp('Rxx(0) gives energy -- not proved');
end
