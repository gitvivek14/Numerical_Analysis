clc;
f=@(x,y)(-2*x*(y^2));
h=input("Step size: ");
a=input("Enter lower limit of interval: ");
b=input("Enter upper limit of interval: ");
x=a:h:b;
n=((b-a)/h);
n=ceil(n);
y=zeros(1,n);
y(1)=input("Enter the initial value of y: ");

for i=1:n-1
k1=h*f(x(i),y(i));
k2=h*f(x(i+1),y(i)+k1);
y(i+1)=y(i)+(k1+k2)/2;
end
fprintf('The solution of the points are \n');
disp(y);

%Step size: 0.2
%Enter lower limit of interval: 0
%Enter upper limit of interval: 0.6
%Enter the initial value of y: 1
%The solution of the points are 
   % 1.0000    0.9600    0.8603
