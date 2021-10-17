% WORKSHOP 3 EXERCISE 2

disp("EXERCISE 2 (Resolution with GPM)")
disp("\n")

[system_gpm, independent_gpm, permutation_gpm] = 
gauss_maximal_pivoting_solver(vandermonde_2, independent_vector_2);

solution_gauss_gpm_unsorted = 
upper_triangular_solver(system_gpm, independent_gpm)';

solution_gauss_gpm = 
reorder_solution(solution_gauss_gpm_unsorted, permutation_gpm);

[abs_error_gauss_gpm, rel_error_gauss_gpm] = 
compute_errors(real_solution_2, solution_gauss_gpm);

disp("Section 2A. Upper triangular GPM matrix: ")
disp(system_gpm)
disp("Section 2A. GPM Independent Term: ")
disp(independent_gpm)
disp("Section 2A. GPM permutation vector: ")
disp(permutation_gpm)

disp("\n")

disp("Section 2A. Solution with GPM: ")
disp(solution_gauss_gpm)
disp("Section 2B. Absolute error with GPM: ")
disp(abs_error_gauss_gpm)
disp("Section 2B. Relative error with GPM: ")
disp(rel_error_gauss_gpm)
disp("\n")
