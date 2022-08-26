function H = generate_curve(domain)
  x = [];
  y = [];
  z = [];
  
  for t = domain
    x = [x (4*sqrt(t)*cos(t))];
    y = [y (4*sqrt(t)*sin(t))];
    z = [z 10];
  endfor
  H = [x; y; z]';
endfunction 
