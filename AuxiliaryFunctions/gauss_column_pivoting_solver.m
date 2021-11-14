function [A,b] = gauss_column_pivoting_solver(A, b)
   n = length(b);
 for k = 1:n-1
   big = abs(A(k,k));
   mx = k;
   for i = k+1:n
     aux = abs(A(i,k));
     if aux > big
       big = aux;
       mx = i;
     endif
   endfor
   if mx != k
     auxF = A(k,1:n);
     auxb = b(k,1);
     b(k,1) = b(mx,1);
     b(mx,1) = auxb;
     A(k,1:n) = A(mx,1:n);
     A(mx,1:n) = auxF;
   endif
  for i = k+1:n
    m = A(i,k)/A(k,k);
    A(i,k) = 0;
    for j = k+1:n
      A(i,j) = A(i,j)-m*A(k,j);
    endfor
    b(i) = b(i)-m*b(k);
    b;
  endfor  
 endfor
endfunction
