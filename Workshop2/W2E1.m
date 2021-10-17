% WORKSHOP 2 EXERCISE 1

A = [1 3 0 9; 3 9 1 3; 6 3 1 3; 2 5 2 7];
b = [1; 2; 3; 4];

[A_gpc, b_gpc] = gauss_column_pivoting_solver(A, b);
sol_gpc = upper_triangular_solver(A_gpc, b_gpc);

disp("Section 1A. With Gaussian pivoted by columns, the equivalent system is: ")
disp(A_gpc)
disp(b_gpc)

disp("Section 1A. The solutions are: ")
disp(sol_gpc)


[A_g, b_g] = gauss_solver(A, b);
sol_g = upper_triangular_solver(A_g, b_g);

disp("Section 1B. With Gauss, the equivalent system is: ")
disp(A_g)
disp(b_g)

disp("Section 1B. The solutions are: ")
disp(sol_g)
