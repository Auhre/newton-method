function new_polynomial = subs_func(polynomial, degree, val)
  
  polynomial = polynomial(:);
  new_polynomial=([]);
  raise = degree - 1;
  for i = 1:degree
    new_polynomial(i) = polynomial(i) * (val**raise);
    raise =  raise - 1;
  endfor
  new_polynomial = new_polynomial(:);
endfunction