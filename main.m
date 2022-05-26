% Rey Rico Alzaga
% BSCS = 4B

% Notice and input statement
fprintf("For testing, try the approximation of -1.5 and iterations of 3 as presented in lecture 3.3\n\n")
approximation = input("Enter Approximation : ");
iterations = input("Enter number of iterations : ");
fprintf("\n");

% polynomial initialization as vector
poly = [1, -1, 2];

% gets the degree of the polynomial
polydegree = max(size(poly)); 


% for loop in getting the P values
for i = 1: iterations
  fprintf("(Iteration %d)\n", i);
  function_= subs_func(poly, polydegree, approximation); % substitute the approximation value on the polynomial
  eval_func(function_, "function") % present the polynomial
  function_value = sum(function_) % apply summation on the polynomial

  [derivation, derivative_degree] = derivative(poly, polydegree); % gets the derivative form and updated degree
  derived = subs_func(derivation, derivative_degree, approximation); % substitute the approximation value on the derived polynomial
  eval_func(derived, "derivative") % presents the derived polynomial
  derivation_value = sum(derived) % apply summation on the derived polynomial
  
  p_value = approximation - (function_value/derivation_value) % newton method formula
  approximation =  p_value; % subtitute the approximation value with the p value to be used in the loop
  fprintf("\n");
endfor

fprintf("\nThe P(%d) is %d\n", iterations, p_value); % the final p value upon iterated process