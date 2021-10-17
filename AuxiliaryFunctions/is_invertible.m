function invertible = is_invertible(matrix)
  if det(matrix) != 0
    invertible = true;
    return;
  else
    invertible = false;
    return;
  endif
endfunction
