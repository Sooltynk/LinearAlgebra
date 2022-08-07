function [L, U, P, Q] = LUFactPM(U)
  n = length(U);
  P = eye(n);
  Q = eye(n);
  for j = 1:n-1
    mx = j;
    my = j;
    for s = j:n
      for i = j:n
        if abs(U(i,s)) > abs(U(mx,my))
          mx = i;
          my = s;
        endif
      endfor
    endfor
    if U(mx,my) == 0
      m = 1;
    else
      % change of rows
      for l = 1:n
        be = U(j,l);
        U(j,l) = U(mx,l);
        U(mx,l) = be;
        % representation of the change of rows made
          aux = P(j,l);
          P(j,l) = P(mx,l);
          P(mx,l) = aux;
          if l < j
            be = L(j,l);
            L(j,l) = L(mx,l);
            L(mx,l) = be;
          endif
      endfor
      % change of columns
      for t = 1:n
        hey = U(t,j);
        U(t,j) = U(t,my);
        U(t,my) = hey;
        % representation of the change of columns made
          aux = Q(t,j);
          Q(t,j) = Q(t,my);
          Q(t,my) = aux;
      endfor
      for i = j+1:n
        m = U(i,j)/U(j,j);
        L(i,j) = m;
        U(i,j) = 0;
        for k = j+1:n
          U(i,k) = U(i,k) - m*U(j,k);
        endfor
      endfor
    endif
  endfor
  for t = 1:n
    L(t,t) = 1;
  endfor
endfunction
