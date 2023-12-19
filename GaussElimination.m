clc;
C = [1 2 -1; 2 1 -2; -3 1 1];
b= [3; 3; -6];
A = [C b];                                                  
n= length(A) - 1;                                               
x = zeros(n,1);        
for i=1:n-1
    for j=i+1:n
            m = A(j,i)/A(i,i);
        
       A(j,:) = A(j,:) - m*A(i,:);
        end
end
x(n) = A(n,n+1)/A(n,n);
for i=n-1:-1:1
    sum = 0;
        for j=i+1:n
            sum = sum + A(i,j)*x(j,:);
                x(i,:) = (A(i,n+1) -sum)/A(i,i);
        end
        
end
for i=1:3
    fprintf("%.2f \n",x(i,1));
end