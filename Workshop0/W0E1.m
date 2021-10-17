% EXERCISE 1: Solve the matrix equation 2X+4A=3*B*A. 

A = [0, -1; 2, 1];
B = [1, 2; 3, 4];

%{ The equation 2X+4A=3*B*A once the X is cleared, the result is 
 X = 1/2*(3*B*A-4*A) ==> X = 0.5*(3*B*A-4*A). %}

X = 0.5*(3*B*A-4*A);
disp("Solution matrix")
disp(X)

% Check if the solution of the matrix equation 2X+4A=3*B*A is correct. 

left_matrix = 2*X+4*A;
right_matrix = 3*B*A;

disp("Matrix on the left side of the equation")
disp(left_matrix)

disp("Matrix on the right side of the equation")
disp(right_matrix)
