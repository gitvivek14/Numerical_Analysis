A=[1 2 4; 3 8 14; 2 6 13];
b=[3; 13; 4];
x0=[ 0;0;0 ];
tol=10^-5;
N=100;
n=length(A);
x=zeros(n,1);

for k=1:N
    for i=1:n
        if(i==1)
            x(i)=(b(i)-A(i,i+1:n)*x0(i+1:n))/A(i,i);
        else
            x(i)=(b(i)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:n)*x0(i+1:n))/A(i,i);
        end
        if(norm(x-x0,inf)<tol)
            break;
        else
            x0=x;
        end
    end
end
fprintf('Solution :\n');
disp(x);