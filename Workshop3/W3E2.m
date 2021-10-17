% WORKSHOP 3 EXERCISE 2 

disp("EXERCISE 2")
disp("\n")

initial_vector_2 = [5/2; 7/3; 11/4; 13/5; 17/6; 19/7; 23/8; 29/9];
vandermonde_2 = generate_vandermonde_matrix(initial_vector_2);
disp("Section 2A. Vandermonde matrix: ")
disp(vandermonde_2)
disp("\n\n")

independent_vector_2 = [1; 2; 3; 4; 5; 6; 7; 8];

real_solution_2 = [313592014347/340340; 
                   -457459856945933/25989600;
                   493563948366959513/3430627200; 
                   -197436771134498893/302702400; 
                   24307645219148215987/13722508800; 
                   -23727434239811381423/8233505280; 
                   915020783660384899/351859200; 
                   -485845220125397/483840];

% Solving the linear equation
[system_gauss, independent_gauss] = gauss_solver(vandermonde_2, 
                                    independent_vector_2);
                                    
solution_gauss_2 = upper_triangular_solver(system_gauss, independent_gauss)';

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_2, 
                                     solution_gauss_2);

disp("Section 2A. Upper triangular Gaussian matrix: ")
disp(system_gauss)
disp("Section 2A. Gaussian independent term: ")
disp(independent_gauss)

disp("\n")

disp("Section 2A. Solution with Gauss: ")
disp(solution_gauss_2)
disp("Section 2B. Absolute error with Gauss: ")
disp(abs_error_gauss)
disp("Section 2B. Relative error with Gauss: ")
disp(rel_error_gauss)
disp("\n")

[system_pivoting, independent_pivoting] = 
gauss_column_pivoting_solver(vandermonde_2, independent_vector_2);

solution_pivoting_2 = 
upper_triangular_solver(system_pivoting, independent_pivoting)';

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_2, 
                                           solution_pivoting_2);

disp("Section 2A. Upper triangular GPC matrix: ")
disp(system_pivoting)
disp("Section 2A. GPC independent term: ")
disp(independent_pivoting)
disp("\n")

disp("Section 2A. Solution with GPC:  ")
disp(solution_pivoting_2)
disp("Section 2B. Absolute error with GPC: ")
disp(abs_error_pivoting)
disp("
Section 2B. Relative error with GPC: ")
disp(rel_error_pivoting)
disp("\n")
