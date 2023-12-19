 x = input("Enter values of x\n"); 
 y = input("Enter values of f(x) corresponding to x\n");
 n = length(x);
 p = input("Enter the values where the function should be evaluated\n");
 for i=1:n
     l(i)=1;
     for j=1:n
         if(i~=j) %~ means x is not equal to j 
             l(i)= ((p-x(j))/(x(i)-x(j))) * l(i);
         end
     end
 end
 sum = 0;
 for i=1:n
     sum = sum + l(i) * y(i);
 end
 fprintf("The value of f(x) at %f is %f \n",p,sum);
