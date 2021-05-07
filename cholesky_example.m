clear all
clc
%A = [1 0 1; 0 2 0; 1 0 3]
%A = [2 4 3; 4 -1 2; 3 2 1 ]
A = [4 12 -16;12 37 -43; -16 -43 98]

%size of matrix
[n , n] = size(A);
%rank of matrix
r = rank(A);
% Check for symmetry fo the Matrix
t = issymmetric(A);

if t == 0 
    fprintf('\n A is Non-symmetric matrix.\n');
elseif r < n
    fprintf('\nRank deficient matrix.\n Full cholesky decomposition not possible.\n');
else
    L = cholesky_method(A)
    L_t = transpose(L)
    % A = L * L_t
end
