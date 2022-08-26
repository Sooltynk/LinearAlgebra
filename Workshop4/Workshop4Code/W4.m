% TALLER IV
% Author: Juan Ginés Ramis Vivancos and Alberto Pérez Ancín

bAux = [sqrt(2); 1/5; exp(1); sqrt(3); 1/7; exp(-1)];
A = vandermonde(bAux);
b = [1; 1; 0; 1; 1; 0];
correct_result = [7.8393275710819351081; -48.781753980901798876;
                     102.6525034837857424; -83.507991601151912461; 
                     20.471932844603298031; -0.49974471119817238753]

% SECTION A

disp("Section A: ");
[A_triu, b_triu] = gauss_solver(A, b);
solution = upper_triangular_solver(A_triu, b_triu);
disp(solution)

% SECTION D

disp("Calculate the error in section A: ");
[e_abs, e_rel] = calculate_errors(solution,correct_result);
disp(e_abs)
disp(e_rel)

% SECTION B

disp("Section B: ");
[A_triu, b_triu] = gauss_column_pivoting_solver(A, b);
solution = upper_triangular_solver(A_triu, b_triu);
disp(solution)

% SECTION D

disp("Calculate the error in section B: ");
[e_abs, e_rel] = calculate_errors(solution,correct_result);
disp(e_abs)
disp(e_rel)

% SECTION C

disp("Section C: ");
[A_triu, b_triu,permutation] = gauss_maximum_pivoting_solver(A, b);
solution = upper_triangular_solver(A_triu, b_triu);
solution = reorder_solution(solution,permutation)

% SECTION D

disp("Calculate the error in section C: ");
[e_abs, e_rel] = calculate_errors(solution,correct_result);
disp(e_abs)
disp(e_rel)
% The most precise section is d since it has a lower error
% due to the use maximum pivoting reduces machine errors
