% TALLER IV
% Author: Juan Ginés Ramis Vivancos y Alberto Pérez Ancín

bAux = [sqrt(2); 1/5; exp(1); sqrt(3); 1/7; exp(-1)];
A = vandermonde(bAux);
b = [1; 1; 0; 1; 1; 0];
resultat_correcte = [7.8393275710819351081; -48.781753980901798876;
                     102.6525034837857424; -83.507991601151912461; 
                     20.471932844603298031; -0.49974471119817238753]

% APARTADO A

disp("Apartado A: ");
[A_triu, b_triu] = gauss_solver(A, b);
solution = upper_triangular_solver(A_triu, b_triu);
disp(solution)

% APARTADO D

disp("Calcular el error del apartado A: ");
[e_abs, e_rel] = calculate_errors(solution,resultat_correcte);
disp(e_abs)
disp(e_rel)

% APARTADO B

disp("Apartado B: ");
[A_triu, b_triu] = pivotaje_parcial(A, b);
solution = upper_triangular_solver(A_triu, b_triu);
disp(solution)

% APARTADO D

disp("Calcular el error del apartado B: ");
[e_abs, e_rel] = calculate_errors(solution,resultat_correcte);
disp(e_abs)
disp(e_rel)

% APARTADO C

disp("Apartado C: ");
[A_triu, b_triu,permutation] = pivotaje_maximal(A, b);
solution = upper_triangular_solver(A_triu, b_triu);
solution = reorder_solution(solution,permutation)

% APARTADO D

disp("Calcular el error del apartado C: ");
[e_abs, e_rel] = calculate_errors(solution,resultat_correcte);
disp(e_abs)
disp(e_rel)
% El apartado más preciso es el d ya que tiene un menor error debido al uso
% de pivotaje maximal que reduce los errores de la máquina

