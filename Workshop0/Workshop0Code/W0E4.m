% EXERCISE 4: The rand (m, n) function randomly generates an array of size
% m x n. Use it to generate a 5 x 5 system of equations (generating two
% matrices, the system and the independent vector). Then resolve the
% system and check that the solution it gives you is a solution.

A = rand(5, 5);
b = rand(5, 1);

disp("The system matrix is: ")
disp(A)

disp("The independent vector is: ")
disp(b)

disp("The solution is: ")
X = inv(A)*b;
disp(X)

disp("Testing: ")
disp("Left side of the equation: ")
disp(A*X)
disp("Right side of the equation: ")
disp(b)
