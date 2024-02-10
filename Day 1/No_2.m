%Sinosuidal signal
t = 0:1/32:2;
x = sin(2*pi*t);
subplot(2,1,1); 
stem(t,x);
xlabel('time'); ylabel('amplitude'); title('Sine wave');

%Sinosuidal signal + impulse signal
for t = 0:1/32:2
    x1=sin(2*pi*t);
   t1=t;
   if t1>0.5 && t1<0.6
       x1=sin(2*pi*t1)+1;
   else
       x1=sin(2*pi*t1);
   end
end


subplot(2,1,2);
stem(t,x1);

xlabel('time'); ylabel('amplitude'); title('Sine wave + impulse signal');