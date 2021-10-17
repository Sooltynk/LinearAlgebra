function A = vandermonde(C)
  n = length(C);
  A = zeros(n,n);
  for j = 1:n
    for i = 1:n
    A(i,j) = C(i)^(n-j);
    endfor
  endfor
endfunction
