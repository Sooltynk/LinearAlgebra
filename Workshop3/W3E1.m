% WORKSHOP 3 EXERCISE 1 

disp("EXEERCISE 1")
disp("\n")

initial_vector_1 = [5/2; 7/3; 11/4];
vandermonde_1 = generate_vandermonde_matrix(initial_vector_1);
disp("Section 1A. Vandermonde matrix.")
disp(vandermonde_1)
disp("\n\n")

independent_vector_1 = [1; 2; 3];

real_solution_1 = [168/5; -842/5; 212];

% Solving the linear equation
[system_gauss, independent_gauss] = gauss_solver(vandermonde_1, 
                                    independent_vector_1);
solution_gauss_1 = upper_triangular_solver(system_gauss, independent_gauss)';

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_1, 
                                     solution_gauss_1);


disp("Section 1A. Upper triangular Gaussian matrix: ")
disp(system_gauss)
disp("Section 1A. Gaussian independent term: ")
disp(independent_gauss)

disp("\n")

disp("Section 1A. Solution with Gauss: ")
disp(solution_gauss_1)
disp("Section 1C. Absolute error with Gauss: ")
disp(abs_error_gauss)
disp("Section 1C. Relative error with Gauss: ")
disp(rel_error_gauss)
disp("\n")

[system_pivoting, independent_pivoting] = 
gauss_column_pivoting_solver(vandermonde_1, independent_vector_1);
solution_pivoting_1 = 
upper_triangular_solver(system_pivoting, independent_pivoting)';

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_1, 
                                           solution_pivoting_1);

disp("Section 1B. Upper triangular GPC matrix: ")
disp(system_pivoting)
disp("Section 1B. GPC independent term: ")
disp(independent_pivoting)
disp("\n")

disp("Section 1B. Solution with GPC: ")
disp(solution_pivoting_1)
disp("Section 1C. Absolute error with GPC: ")
disp(abs_error_pivoting)
disp("Section 1C. Relative error with GPC: ")
disp(rel_error_pivoting)
disp("\n")
