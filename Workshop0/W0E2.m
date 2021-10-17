% EXERCISE 2: Solve the matrix equation A*X*B^t=C

A = [-3, -2; 3, 3];
B = [5, 3; 9, 4];
C = [1, 1; 0, 0];

% The equation A*X*B^t = C. 
% First, multiplying by the left by the inverse of A. X*B^t=A^(-1)*C. 
% Second, multiplying by the right by the inverse of B^t. X=A^(-1)*C*(B^t)^(-1).

% All of the above is true if the inverse matrix of A and B ^ t exist. This is
% when its determinant isn't zero.

function invertible = is_invertible(matrix)
  if det(matrix) != 0
    invertible = true;
    return;
  else
    invertible = false;
    return;
  endif
endfunction

invertible_A = is_invertible(A);
invertible_B = is_invertible(B);

if invertible_A & invertible_B
  X = inv(A)*C*inv(B');
  
  disp("Both matrices are invertible, the solution is: ")
  disp(X)
  
  disp("Matrix on the left side of the equation: ")
  disp(A*X*B')
  
  disp("Matrix on the right side of the equation: ")
  disp(C)
else
  disp("Matrices A and B aren't invertible")
  endif
