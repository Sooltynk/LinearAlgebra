function [absolute_error, relative_error] = compute_errors (solutions, 
                                                            correct_result)
  n = length(solutions);
  for i = 1:n
    absolute_error(i, 1) = abs(correct_result(i)-solutions(i));
    relative_error(i, 1) = absolute_error(i, 1)/abs(correct_result(i));
  endfor
endfunction
