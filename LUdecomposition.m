clc;
A=[1 2 4; 3 8 14; 2 6 13];
B=[3; 13; 4];
n=length(A);
x=zeros(n,1);
m=eye(n);
y=zeros(n,1);
for i=1:n-1
    for j=i+1:n
        m(j,i)=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-m(j,i)*A(i,:);
    end
end
L=m;
U=A;
y(1)=B(1);
for i=2:n
    y(i)=B(i)-L(i,1:i-1)*y(1:i-1);
end
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=(y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
end

fprintf("the solution of system\n");

disp(x);