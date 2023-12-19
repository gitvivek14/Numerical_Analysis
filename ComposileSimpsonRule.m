clc;
a=input("Enter lower limit") %1
b=input("Enter upper limit") %2
f=@(x)(x^4)
n=input("Enter no of intervals") %6
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    if(rem(i,2)==0)
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
sum=(sum+f(a)+f(b))*h/3
fprintf('The value of integral is %f',sum)