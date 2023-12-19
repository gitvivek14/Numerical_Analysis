a=input("Enter lower limit") %1
b=input("Enter upper limit") %2
f=@(x)(x)
n=input("Enter no of intervals") %6
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+2*f(x);
end
sum=(sum+f(a)+f(b))*h/2
fprintf('The value of integral is %f',sum)