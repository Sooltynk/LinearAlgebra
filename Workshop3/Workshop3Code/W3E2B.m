% WORKSHOP 2 EXERCISE 2

A = [1/100 (1/100)**2 (1/100)**3 1; 1/10 (1/10)**2 (1/10)**3 1; 1 1 1 1; 
    12 12**2 12**3 1];
b = [1; 5; 8; 3];

[A_gpc, b_gpc] = gauss_column_pivoting_solver(A, b);
sol_gpc = upper_triangular_solver(A_gpc, b_gpc);

disp("Section 2A. With Gaussian pivoted by columns, the equivalent system is: ")
disp(A_gpc)
disp(b_gpc)

disp("Section 2A. The solutions are: ")
disp(sol_gpc)

[A_g, b_g] = gauss_solver(A, b);
sol_g = upper_triangular_solver(A_g, b_g);

disp("Section 2B. With Gauss, the equivalent system is: ")
disp(A_g)
disp(b_g)

disp("Section 2B. The solutions are: ")
disp(sol_g)

real_solution = [6279377945/127128771; -5764183750/127128771; 
                 436925000/127128771; 21636991/42376257];
disp("Section 2C. The exact solutions are: ")
disp(real_solution)

[abs_error_gpc, rel_error_gpc] = compute_errors(real_solution, sol_gpc);
[abs_error_g, rel_error_g] = compute_errors(real_solution, sol_g);

disp("Section 2C. The absolute error with Gaussian column pivoting is: ")
disp(abs_error_gpc)

disp("Section 2C. The absolute error with Gauss is: ")
disp(abs_error_g)
