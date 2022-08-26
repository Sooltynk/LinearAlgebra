% Final Assignment - problem 4.1 (group 5)
% Alberto Pérez Ancín, Juan Ginés Ramis Vivancos
% Iván Riera Morales and Antonio Ruiz Ruiz

%%%%%%%%%% PROBLEM PARAMETERS %%%%%%%%%%
domain = linspace(0, pi*8, 200);
sun_point = [5,0,14];
plane_coefficients = [0.1, 0.1, 1, 1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

curve_points = generate_curve(domain);
shadows = generate_shadows(curve_points, sun_point, plane_coefficients);

plot_scene(curve_points, sun_point, shadows, plane_coefficients);
