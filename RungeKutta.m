clc;
clear;
f=@(x,y)((2*x*y+exp(x))/((x^2)+x*exp(x)));
h=input("enter step size");
a=input("enter lower limit");
b=input("enter upper limit");
x=a:h:b; 
%a=0,b=1 // lower and upper limit
 n=(b-a)/h;
 %disp(n)
 n=floor(n);
 
 y=zeros(1,n);
 y(1)=input("enter intial value ");
% n=(b-a)/h
 for i=1:n-1
     k1=h*f(x(i),y(i));
     k2=h*f(x(i)+(h/2),y(i)+(k1/2));
     k3=h*f(x(i)+(h/2),y(i)+(k2/2));
     k4=h*f(x(i+1),y(i)+(k3));
     y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
end
disp(y)
%enter step size0.2
%enter lower limit1
%enter upper limit1.6
%enter intial value 0
         %0    0.1402    0.2705    0.3927