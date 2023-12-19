clc;
clear ;
x=input('Enter the value of x'); %[1 1.5 2.0 2.5]
y=input('Enter the of f corresponding to x'); %[ 2.7183 4.4817 7.3891 12.1825]
p=input('Enter the value where f should be available'); %2.25
n=length(x);
f=zeros(n,n);
for i=1:n
    f(i,1)=y(i);
end 
for i=2:n
    for j=2:i
        f(i,j)=(f(i,j-1)-f(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
fx=1;
for i=n-1:-1:1
    fx=fx*(p-x(i))+f(i,i);
end
fprintf('The value of x %f is %f',p,fx);


