function shadows = generate_shadows(curve_points, sun_point, plane_coefficients)
  [n_rows, n_columns] = size(curve_points);
  shadows = zeros(n_rows, n_columns);
  
  a=plane_coefficients(1);
  b=plane_coefficients(2);
  c=plane_coefficients(3);
  d=plane_coefficients(4);
  
  s1 = [sun_point(1)];%shadow points%
  s2 = [sun_point(2)];
  s3 = [sun_point(3)];
  
  
  for i=1:n_rows
    %curve_points 
    xi = [curve_points(i,1)];
    yi = [curve_points(i,2)];
    zi = [curve_points(i,3)];
    matrix = [s2-yi,-s1+xi,0;
    0, s3-zi, -s2+yi;
    plane_coefficients(1),plane_coefficients(2),plane_coefficients(3)];
    
    
    vectorSoluciones = [s1*(s2-yi)-s2*(s1-xi);
               s2*(s3-zi)-s3*(s2-yi);
               d];
   

   [L, U, P, Q] = LUFactPM(matrix);
    c =lower_triangular_solver(L,P*vectorSoluciones);
    z=upper_triangular_solver(U,c);
    x=Q*z;
   
   shadows(i,1)=x(1);
   shadows(i,2)=x(2);
   shadows(i,3)=x(3);
  endfor
  
endfunction
