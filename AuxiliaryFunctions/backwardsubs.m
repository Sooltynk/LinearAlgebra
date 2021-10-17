function [X0] = backwardsubs(A,b)
  n = length(b);
  X0(n) = b(n)/A(n,n);
  for i = n-1:-1:1
    S = b(i);
    for j = i+1:n
      S = S-A(i,j)*X0(j);
    endfor
    X0(i) = S/A(i,i);
  endfor
endfunction
