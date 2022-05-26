function [derivation, derivative_degree] = derivative(polynomial, degree)
  
  polynomial = polynomial(:);
  derivation =([]);
  raise = degree - 1;
  
  for i = 1:degree
    derivation(i) = polynomial(i) * raise;
    raise =  raise - 1;
  endfor
    derivation = derivation(:);
    derivative_degree = degree - 1;
  endfunction