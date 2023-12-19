clc;
A = [2 -1 0;-1 2 -1;0 -1 2];
x = [1;0;0];
N = 6;
tol = 0.01;
K=zeros(N,1);
for i = 1:N
    y = A*x;
    K(i) = norm(y,"inf");
    x = y/K(i);
    if(i>1)
        if(abs(K(i)-K(i-1))<tol)
            fprintf("The largest eigen value is: %f \n", K(i));
            fprintf("The eigen vector is: \n");
            disp(x); 
            break;
       end
    end
end