% EXERCISE 3: Solve the matrix system 2*A+B=M and A-3*B=N.

M = [1, 2, 2; -2, 1, 0];
N = [-4, -3, -2; -1, 0, -1];

% Solving the system, B = (M-2*N)/7 and A = N+3*B.

disp("Solution matrix B")
B = (1/7)*(M-2*N);
disp(B)

disp("Solution matrix A")
A = N+3*B;
disp(A)

disp("Matrix on the left side of the first equation")
disp(2*A+B)
disp("Matrix on the right side of the first equation")
disp(M)

disp("Matrix on the left side of the second equation")
disp(A-3*B)
disp("Matrix on the right side of the second equation")
disp(N)
