function [X0] = forwardsubs(A,b)
  n = length(b);
  X0(1) = b(1)/A(1,1);
  for i = 2:1:n
    S = b(i);
    for j = 1:i-1
      S = S-A(i,j)*X0(j);
    endfor
    XO(i) = S/A(i,i);
  endfor
endfunction
