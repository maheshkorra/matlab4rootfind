function C_L = cholesky_method(A)

%size of matrix
[n , n] = size(A);

R_L=[0];
for j = 1:n-1
    R_L=[R_L,0];
end

C_L=R_L;
for j = 1:n-1
    C_L = [C_L;R_L];
end

for j = 1:n
    
    sum = 0;
    
    for k = 1:j-1
        sum = sum + (C_L(j,k))^2;
    end
        
    C_L(j,j) = sqrt(A(j,j)-sum);

    for i = j+1:n
        sum = 0;

        for k = 1:j-1
             sum = sum + C_L(i,k)*C_L(j,k);
        end

    C_L(i,j) = (A(i,j)-sum)/C_L(j,j);
    end
            
end  
    
end
    
    