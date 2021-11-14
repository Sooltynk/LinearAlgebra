% WORKSHOP 1

A = [-1 0 -1 4; 4 -1 0 -1; -1 4 -1 0; 0 -1 4 -1];
b = [35; 25; 15; 25];

disp("The solution using the inverse matrix method is: ")
disp(inv(A)*b)

[A_triu, b_triu] = gauss_solver(A, b);

disp("The solution using the inverse matrix method with the Gaussian equivalent system is: ")
disp(inv(A_triu)*b_triu)

solution = upper_triangular_solver(A_triu, b_triu);

disp("The solution solving the upper triangular system is: ")
disp(solution)
